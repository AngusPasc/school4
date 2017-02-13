Program n_4;
var a,b,c:integer;
    c1:char;
    d:string;
begin
  readln(a,b);
  while (a>0) do
   begin
    c:=a mod b;
    if (c>9) then
      begin
         c:=c+55;
         c1:=chr(c);
      end
    else
      c1:=chr(ord('0')+c);
    d:=c1+d;
    a:=a div 16;
   end;
   write(d); 
end.   