Program nO_11;
var a,b,n,m,k,i:integer;
begin
//данные дл€ ввода: n m k (3 4 2)
  readln(n,m,k);
//n Ч количество игроков
//m Ч количество уровней
//k Ч цена красного значка
  a:=1;
  for i:=2 to m do
    if (i mod k)=0 then 
      if ((i-k-1)mod k)<>0 then b:=max(i div k, b)
      else
        if ((i-k-1)div k)>(i div k) then
          begin
            b:=max((i-k-1)div k, b);
            a:=max(i-k-1,a);
    end;
  write((a+b)*n);
end.