Program n_5;
var ch : integer;
begin
  readln (ch);
  if ((ch mod 10)=((ch div 10)mod 10)) and ((ch mod 10)=((ch div 100)mod 10)) and ((ch mod 10)=((ch div 1000)mod 10)) then
    writeln ('Правда')
  else 
    writeln ('Нет');
end.