Program n_005_2;
type seyf = record
    name:string;
    cod:string;
    price:integer;
  end;
var arr: array of seyf;
    F:text; i,j,a,k,max:integer; stroka:string;
function for_arr(l_stroka:string; l_j:integer):string;
var l_i,l_k,err,price:integer;
    l_name,l_cod,l_price:string;
  begin
    l_k:=0;
    for l_i:=1 to length(l_stroka) do
      begin
        if l_stroka[l_i]=' ' then 
          begin
            l_k:=l_k+1;
            continue;
          end;
        if l_k=0 then l_name:=l_name+l_stroka[l_i];
        if l_k=1 then l_cod:=l_cod+l_stroka[l_i];
        if l_k=2 then l_cod:=l_cod+l_stroka[l_i];
        if l_k=3 then l_price:=l_price+l_stroka[l_i];
      end;
    arr[l_j].name:=l_name;
    arr[l_j].cod:=l_cod;
    val(l_price,price,err);
    arr[l_j].price:=price;
  result:='';
  end;
function find_min(l_max:integer;l_i:integer;l_ch:integer):integer;  
  var l_k,l_j,l_a:integer;
  begin
  l_k:=0;
  for l_a:=l_max downto 1 do
    begin
      for l_j:=0 to l_i-1 do
        begin
          if l_a=arr[l_j].price then l_k:=l_k+1;
        end;
      if l_k>=(trunc(l_i*0.05-l_ch)) then
        break;
    end;
    result:=l_a;
  end;
begin
  assign(F,'¬ходные данные.txt');
  reset(F);
  while EOF(F)=false do 
    begin
      readln(F,stroka);
      j:=j+1;
    end;
  setlength(arr,j);
  assign(F,'¬ходные данные.txt');
  reset(F);
  i:=0;
  while EOF(F)=false do
    begin
      readln(F,stroka);
      stroka:=for_arr(stroka,i);
      i:=i+1;
    end;
  for j:=0 to i-1 do
    begin
      if arr[j].price>max then max:=arr[j].price;
    end;
  a:=find_min(max,i,0);
  if a<15 then
    begin
      for j:=0 to i-1 do
        begin
          if arr[j].price=a then k:=k+1;
        end;
      if k>1 then write(find_min(max,i,1))
      else write(a);
    end
  else write(a);
end.