Program olimp_011;
var n,m,k,s:integer;
    f:text;
begin
  assign(f,'game.in.txt');
  reset(f);
  read(f,n,m,k);
  s:=(k-1)*n+(m div k)*n;
  close(f);
  assign(f,'game.out.txt');
  rewrite(f);
  write(f,s);
  close(f);
end.