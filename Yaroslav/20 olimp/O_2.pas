Program O_2;
var M,N,K1,T1,K2,T2:integer;
begin
  readln(M,N);
  readln(K1,T1);
  readln(K2,T2);
  //появляется исключение, если два танка остановались в одной колонне
  if K1=K2 then write(M*N-N+min(T1,T2)-1)
  else write(M*N-N+T1-N+T2-2);
end.