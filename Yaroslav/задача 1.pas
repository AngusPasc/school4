Program n_5;
var ch : integer;
begin
  readln (ch);
  if (ch mod (ch mod 10) = 0) and (ch mod ((ch div 10) mod 10) = 0) and (ch mod ((ch div 100) mod 10) = 0) and (ch mod ((ch div 1000)) = 0) then
    writeln ('Правда')
  else
    writeln ('Нет');
end.