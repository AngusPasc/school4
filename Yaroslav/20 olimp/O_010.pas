Program nO_10;
var a,b,c,d:integer; s:real; s_str:string;
begin
  //2 2 2 2; 10 10 0 0
  readln(a,b,c,d);
  s:=min(a,b)+min(c,d);
  a:=0; b:=0; c:=0;
  while c<>1 do
    begin
      str(sqrt(s),s_str);
      b:=0;
      for a:=1 to length(s_str) do
        if s_str[a]='.'then 
          begin
            s:=s-1;
            b:=1;
            break;
          end;
      if b=0 then c:=1;
    end;
  write(sqrt(s));
end.