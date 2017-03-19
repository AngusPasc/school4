program zadacha_017;
var m,n,i,j,c:integer;
    color:array[0..1] of string:=('black','white');
begin
  readln(m,n,i,j,c);
  if (m*n)mod 2=0 then writeln('equal')
  else
    begin
      if (i mod 2<>0)and(j mod 2<>0)or(i mod 2=0)and(j mod 2=0)then writeln(color[c])
      else writeln(color[1-c]);
    end;
end.