Program n_3;
var ch, a1, b1,a2: real;
    a,b: integer;
begin
  readln (ch);
  a:=trunc(ch);
  b:=round(frac(ch)*10000);
  writeln (a,',',b);
  if ((b mod 10)<>0) then
    begin
      b1:=b;
      writeln (b1);
    end
  else 
    begin
      if ((b mod 100)<>0) then
        begin
        b1:=b*0.1;
        writeln (b*0.1);
        end
      else 
         begin
          if ((b mod 1000)<>0) then
            begin
              b1:=b*0.01;
              writeln (b*0.01);
            end
          else 
            begin 
              if ((b mod 10000)<>0) then
                begin
                  b1:=b*0.001;
                  writeln (b*0.001);
                end
            end;
         end;
      end;
  if ((a mod 10)=0) then
    begin
      a1:=a*0.01;
      writeln (a*0.01)
    end
  else 
    begin
      if ((a mod 100)=0) then
        begin
          a1:=a*0.001;
          writeln (a*0.001);
        end
      else 
         begin
          if ((a mod 1000)=0) then
            begin
              a1:=a*0.0001;
              writeln (a*0.0001);
            end;
         end;
      end;
  if (a>0) and (a<9) then
    a1:= a*0.1;
  if (a>10) and (a<99) then
    a1:= a*0.01;
  if (a>100) and (a<999) then
    a1:= a*0.001;
  if (a>1000) and (a<9999) then
    a1:= a*0.0001;
  writeln (a1+b1);
end.