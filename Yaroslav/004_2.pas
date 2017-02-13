Program n_004_2;
var a,n,f:integer;
    b:string;
function v_n(ch:string):string;
  var ost:integer;
  begin
    while (a<>0) do
      begin
        ost:=a mod n;
        if (ost<10) then
          ch:=chr(ost+48)+ch
        else 
          ch:=chr(ost+55)+ch;
        a:=a div n;
      end;
    result:=ch;
  end;
function v_10(str:string):integer;
  var i,k,d,c:integer;
  begin
    str:=b;
    c:=length(str);
    k:=1;
    for i:=c downto 1 do
      begin
        if (str[i]>='A') then
          begin
            d:=d+(ord(b[i])-55)*k;
            k:=k*n;
          end
        else
          begin
            d:=d+(ord(b[i])-48)*k;
            k:=k*n;
          end;
      end;
    result:=d;
  end;
begin
  readln(a,n);
  b:=v_n(b);
  writeln(b);
  f:=v_10(b);
  write(f);
end.
      