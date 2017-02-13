Program n_2;
var a:string;
    b,d1,i,c:integer;
    d:char;
begin
  readln(a);
  readln(b);
  c:=length(a);
  for i:=1 to c do
    begin
      if (a[i]>='A')and(a[i]<='Z')then
        begin
          d1:=(ord(a[i])mod b)mod 26;
          d1:=ord(a[i])+d1;
          if (chr(d1)>'Z')then
            d1:=d1-26;
          d:=chr(d1);
          write(d);
          continue;
        end;

      if (a[i]>='a')and(a[i]<='z')then
        begin
          d1:=(ord(a[i])mod b)mod 26;
          d1:=ord(a[i])+d1;
          if (chr(d1)>'z')then
            d1:=d1-26;
          d:=chr(d1);
          write(d);
          continue;
        end;

      if (a[i]>='À')and(a[i]<='ß')then
        begin
          d1:=(ord(a[i])mod b)mod 32;
          d1:=ord(a[i])+d1;
          if (chr(d1)>'z')then
            d1:=d1-32;
          d:=chr(d1);
          write(d);
          continue;
        end;

      if (a[i]>='à')and(a[i]<='ÿ')then
        begin
          d1:=(ord(a[i])mod b)mod 32;
          d1:=ord(a[i])+d1;
          if (chr(d1)>'ÿ')then
            d1:=d1-26;
          d:=chr(d1);
          write(d);
        end
      else 
        write(a[i]);  
    end;
end.
      
        