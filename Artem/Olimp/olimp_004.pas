program zadacha_4;
var f,t:text;
    count:array['A'..'Z']of integer;
    str,str_1:string;
    n,i,j,s:integer;
    k:char;
begin
  assign(f,'input.txt');
  reset(f);
  readln(f,str);
  readln(f,n);
  for i:=1 to n do
    begin
      s:=0;
      for k:='A' to 'Z'do
        count[k]:=0;
      readln(f,str_1);
      for j:=1 to length(str)do
        count[str[j]]:=count[str[j]]+1;
      for j:=1 to length(str_1)do
          count[str_1[j]]:=count[str_1[j]]-1;
      for k:='A' to 'Z'do
        s:=count[k]+s;
      if s=0 then
        begin
          writeln('yes');
          assign(t,'output.txt');
          rewrite(t);
          writeln(t,str_1);
          close(t);
          exit;
        end;
    end;
  close(f);
end.