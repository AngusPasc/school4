program zadacha_009;
var a,b,s,t,t1,max:real;
    t2:integer;
begin
  readln(a,b,s);
  t:=s/1000;
  t1:=frac(t);
  t2:=trunc(t);
  t2:=t2 mod trunc(a+b);
  if (t1+t2)>b then max:=1000;
  if ((t1+t2)<a)and(1000>max) then max:=1000;
  if ((t1+t2)<b)and((s/(t2+b))>max) then max:=s/(t2+b);
  writeln(max);
end.