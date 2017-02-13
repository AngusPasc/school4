Program n_5;
var ch1,ch2,i,i1,i2,x,a: integer;
begin
  readln (ch1, ch2);
  a:=min(ch1,ch2);
  for i:=1 to a do
    begin
      if (ch1 mod i)=0 then
        i1:=i;
      if (ch2 mod i)=0 then
        i2:=i;
      if (i1=i2) then 
        begin
          if (x<i) then
            x:=i1;
        end;
      end;
  writeln (x);
end.
        