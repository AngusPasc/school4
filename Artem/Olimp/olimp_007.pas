program zadacha_7;
var k,t:integer;
begin
  readln(k,t);
  if (t div k)mod 2=0 then
    writeln(t mod k)
  else
    writeln(k-(t mod k));
end.