program n_4;
var x,y : real;
begin
  readln (x,y);
  if (x<=-2) and (y<=-x) then
    writeln ('������� A');
  if (x<=-2) and (y>=-x) then
    writeln ('������� B');
  if (x>=-2) and (y>=-x) and (x*x+y*y>=4) then 
    writeln ('������� C');
  if (x>=-2) and (y>=0) and (y<=-x) and (x*x+y*y>=4) then 
    writeln ('������� D');
  if (x>=-2) and (y>=0) and (y<=-x) and (x*x+y*y<=4) then 
    writeln ('������� E');
  if (x>=-2) and (y>=-x) and (x*x+y*y<=4) then 
    writeln ('������� F');
  if (x>=-2) and (y<=0) and (y<=-x) and (x*x+y*y<=4) then
    writeln ('������� G');
  if (x>=-2) and (y<=0) and (y<=-x) and (x*x+y*y>=4) then
    writeln ('������� H');
end.