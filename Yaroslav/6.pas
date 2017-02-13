Program n_6;
var i,a: integer;
begin 
  for i:=10000 to 99999 do
    begin
    if (((i div 1000)div 10) + ((i div 1000)mod 10)) = (((i mod 100)div 10) + ((i mod 100)mod 10)) then
      begin
        write (i,' ');
        a:= a+1;
          if (a mod 10)=0 then 
            writeln;
      end;
    end;
    writeln (a);
end.
    
      