Program n_3;
var a:string;
    b,d,i:integer;
    c:real;
begin
  readln(a);
  readln(b);
  d:=0;
  for i:=length(a) downto 1 do
    begin
      if (a[i]>='A')and(a[i]<='Z')then
        c:=(ord(a[i])-55)*power(b,d)+c
      else
        c:=(ord(a[i])-48)*power(b,d)+c;
      d:=d+1;
    end;
  write(c);
end.