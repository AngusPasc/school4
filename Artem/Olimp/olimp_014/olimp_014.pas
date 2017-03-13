program zadacaha_014;
var baza:array[1..1000] of integer;
    stroka,nomber_str:string;
    f:text;
    nomber,n,err,i,j:integer;
begin
  assign(f,'schools.in.txt');
  reset(f);
  readln(f,n);
  for i:=1 to n do
    begin
      readln(f,stroka);
      for j:=1 to length(stroka) do
        if stroka[j]in['0'..'9']then nomber_str:=nomber_str+stroka[j];
      val(nomber_str,nomber,err);
      baza[nomber]:=baza[nomber]+1;
      nomber_str:='';
    end;
  close(f);
  n:=0;
  stroka:='';
  for i:=1 to 1000 do
    if (baza[i]<>0)and(baza[i]<=5)then 
      begin
        n:=n+1;
        str(i,nomber_str);
        stroka:=stroka+nomber_str+#10;
      end;
  assign(f,'schools.out.txt');
  rewrite(f);
  writeln(f,n);
  for i:=1 to 1000 do
    if (baza[i]<>0)and(baza[i]<=5)then 
      begin
        writeln(f,i);
      end;
  close(f);
end.