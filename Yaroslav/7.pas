Program n_7;
var a: string;
    b,i,c: integer;
    d: char;
begin
  readln (a);
  b:=length(a);
  for i:=1 to b do
    begin
      d:=a[i];
      c:=Ord(d);
        if ((c div 10)=0) then
          write ('00',c)
        else 
          begin
            if ((c div 100)=0) then
              write ('0',c)
            else
              write (c);
          end;
    end;
end.
        