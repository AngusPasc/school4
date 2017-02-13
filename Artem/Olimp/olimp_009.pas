program zadacha_9;
var a,b,x,v:real;
    f:text;
begin
  readln(a,b,x);
  if x/a<=1000 then writeln((x/a):3:9)
  else 
    if x/b<=1000 then writeln((x/b):3:9)
         else 
           if ((x/a)/ a)<=1000 then writeln(((x/a)/ a):3:9)
             else writeln(((x/b)/ b):3:9);
end.