Program nO_017;
var m,n,i,j,c: integer; c1,c2: string;
begin
  readln(m,n,i,j,c);
  if max(m,n) mod min(m,n)=0 then
    begin
      write('equal');
      exit;
    end;
  if c=0 then
    begin
      c1:='black';
      c2:='white';
    end
  else
    begin
      c1:='white';
      c2:='black';
    end;
  if i mod 2=0 then
    if j mod 2=0 then write(c1)
    else write(c2)
  else 
    if j mod 2=0 then write(c2)
    else write(c1);
end.