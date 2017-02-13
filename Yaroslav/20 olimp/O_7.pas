Program nO_7;
var K,T:integer;
begin
      readln(K,T);
      if (T div K)mod 2=0 then 
         if T div K=K then write(0)
         else write(T mod K)
      else write(K-(T mod K));
end.