Program n_005_1;
type zapravka = record
    name:string;
    adress:string;
    number:string;
    price:integer;
  end;
var arr: array of zapravka;
    F:text; i,j:integer; stroka:string;
function for_arr(l_stroka:string; l_j:integer):string;
var l_i,l_k,err,price:integer;
    l_name,l_adress,l_number,l_price:string;
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
        if l_k=1 then l_adress:=l_adress+l_stroka[l_i];
        if l_k=2 then l_number:=l_number+l_stroka[l_i];
        if l_k=3 then l_price:=l_price+l_stroka[l_i];
      end;
    arr[l_j].name:=l_name;
    arr[l_j].adress:=l_adress;
    arr[l_j].number:=l_number;
    val(l_price,price,err);
    arr[l_j].price:=price;
    
  result:='';
  end;
function kol_min(l_number:string;l_j:integer):integer;
  var l_i,l_k,l_max,l_min:integer;
  begin
    l_k:=0;
    for l_i:=0 to (l_j-1) do
      begin
        if arr[l_i].number=l_number then
          begin
            if arr[l_i].price>l_max then l_max:=arr[l_i].price;
          end;
      end;
    for l_i:=0 to (l_j-1) do
      begin
        if arr[l_i].number=l_number then
          begin
            if arr[l_i].price<=l_max then l_min:=arr[l_i].price;
          end;
      end;
    for l_i:=0 to (l_j-1) do
      begin
        if arr[l_i].number=l_number then
          begin
            if arr[l_i].price=l_min then l_k:=l_k+1;
          end;
      end;
  result:=l_k;
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
  writeln(arr);
  write(kol_min('92',i),' ',kol_min('95',i),' ',kol_min('98',i));
end.
      
