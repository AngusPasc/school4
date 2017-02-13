Program n_2;
var a,b,c,d,ch: integer;
begin
  readln (ch);
  d := ch mod 10;
  c := (ch div 10) mod 10;
  b := (ch div 100) mod 10;
  a := (ch div 1000) mod 10;
  if ((a+b+c+d)mod 2=0) then
    begin
      if a>0 then
        a:=a-1
      else
        a:= 9;
      if b>0 then
        b:=b-1
      else 
        b:= 9;
      if c>0 then
        c:=c-1
      else 
        c:=9;
      if d>0 then
        d:=d-1
      else 
        d:=9;
    end
  else 
    begin
      if a<9 then
        a:=a+1
      else
        a:= 0;
      if b<9 then
        b:=b+1
      else 
        b:= 0;
      if c<9 then
        c:=c+1
      else 
        c:=0;
      if d<9 then
        d:=d+1
      else 
        d:=0;
    end;
  writeln (a,b,c,d);
end.
      
    
  
  