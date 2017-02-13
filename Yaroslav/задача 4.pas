program n_4;
var x,y : real;
begin
  readln (x,y);
  if (x<=-2) and (y<=-x) then
    writeln ('Область A');
  if (x<=-2) and (y>=-x) then
    writeln ('Область B');
  if (x>=-2) and (y>=-x) and (x*x+y*y>=4) then 
    writeln ('Область C');
  if (x>=-2) and (y>=0) and (y<=-x) and (x*x+y*y>=4) then 
    writeln ('Область D');
  if (x>=-2) and (y>=0) and (y<=-x) and (x*x+y*y<=4) then 
    writeln ('Область E');
  if (x>=-2) and (y>=-x) and (x*x+y*y<=4) then 
    writeln ('Область F');
  if (x>=-2) and (y<=0) and (y<=-x) and (x*x+y*y<=4) then
    writeln ('Область G');
  if (x>=-2) and (y<=0) and (y<=-x) and (x*x+y*y>=4) then
    writeln ('Область H');
end.