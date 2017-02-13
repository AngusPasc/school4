Program n_007_2;
type konfeti=record
     ostatok:integer;
     kol:integer
end;
var F:text; arr:array of konfeti;
    err,i,j,k,max,n,det,konf:integer; stroka:string;
begin
  assign(F,'ввод.txt');
  reset(F);
  readln(F,n);
  setlength(arr,n);
  for i:=1 to n do
    begin
      readln(F,stroka);
      val(copy(stroka,1,pos(' ',stroka)-1),det,err); val(copy(stroka,pos(' ',stroka)+1,length(stroka)),konf,err);
      if (konf mod det)<>0 then 
        begin
          arr[j].ostatok:=konf mod det;
          j:=j+1;
        end;
    end;
  for i:=0 to j do
      for k:=0 to j do
        if arr[i].ostatok=arr[k].ostatok then arr[i].kol:=arr[i].kol+1;
  for i:=0 to j do
    if arr[i].kol>max then 
      begin
        max:=arr[i].kol;
        k:=i;
      end;
  write(arr[k].ostatok);
end.