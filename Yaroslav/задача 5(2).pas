program n_5;
var x,y : real;
begin
  readln (x,y);
  if (y<=2*x*x) and (y>=1) then
    writeln ('B');
  if (x<=-1) and (y>=2*x*x)then
    writeln ('A');
  if (y>=1) and (y<=2*x*x) and (x>=0) then
    writeln ('C');
  if (y<=1) and (y<=2*x*x) and (y>=0) and (x>=0) then
    writeln ('D');
  if (x>=-1) and (y<=0) then
    writeln ('E');
  if (x>=-1) and (y>=0) and (y<=1) and (y<=2*x*x) then
    writeln ('F');
  if (x>=-1) and (y>=1) and (y<=2*x*x) then
    writeln ('G');
  if (y<=2*x*x) and (y<=1) and (y>=0) then
    writeln ('H');
end.