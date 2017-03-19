program zadacha_018;
var f:text;
    n,i,err,champion,position,j:integer;
    str:string;
    baza:array of integer;
begin
  assign(f,'shooting.in.txt');
  reset(f);
  readln(f,n);
  setlength(baza,n);
  readln(f,str);
  str:=str+' ';
  close(f);
  for i:=0 to n-1 do
    begin
      val(copy(str,1,pos(' ',str)-1),baza[i],err);
      if baza[i]>champion then 
        begin
          champion:=baza[i];
          position:=i;
        end;
      delete(str,1,pos(' ',str));
    end;
  champion:=0;
  for i:=1 to n-2 do
    if (baza[i]mod 10=5)and(position<i)and(baza[i]>baza[i+1])and(baza[i]>champion)then
      champion:=baza[i];
  for i:=0 to n-2 do
    for j:=i+1 to n-1 do
      if baza[i]<baza[j]then
        begin
          err:=baza[i];
          baza[i]:=baza[j];
          baza[j]:=err;
        end;
  position:=0;
  for i:=n-1 downto 0 do
    if baza[i]=champion then
      position:=i+1;
  writeln(baza);
  writeln(position);
end.