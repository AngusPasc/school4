Program nO_9;
var a,b,c:integer; x:real;
function F(l_c:real;l_a:integer):real;
  begin
    if x/l_c>1000 then l_c:=l_c+l_a;
    result:=l_c;
  end;
begin
  readln(a,b,x);
  if F((a*(trunc((x/1000)/(a+b))+1))+(b*trunc((x/1000)/(a+b))),b)<=F((b*(trunc((x/1000)/(a+b))+1))+(a*trunc((x/1000)/(a+b))),a) then c:=1;
  if (c=1)and(F((b*(trunc((x/1000)/(a+b))+1))+(a*trunc((x/1000)/(a+b))),a)>=x/1000)then write(1000)
  else write(x/min(F((b*(trunc((x/1000)/(a+b))+1))+(a*trunc((x/1000)/(a+b))),a),F((a*(trunc((x/1000)/(a+b))+1))+(b*trunc((x/1000)/(a+b))),b)));
end.