Program n_1;
var a,c:string;
    b,d,n,s,k,palki,i:integer;
begin
  readln(a);
  b:=length(a);
  for i:=1 to b do
    begin
      if (a[i]>='�') and (a[i]<='�') then
          c:=c+a[i];
      if (a[i]>='0') and (a[i]<='9') then
        begin
          d:=ord(a[i])-48;
          s:=s+d;
          k:=k+1;
        end;
      if (a[i]='�') then
        n:=n+1;
      if (a[i]='|') then
        begin
          palki:=palki+1;
          if (palki=1) then
            writeln('�������:',c);
          if (palki=3) then
            writeln('���:',c);
          if (palki=5) then
            writeln('��������:',c);  
          c:='';
        end;
    end;
  writeln('������� ��� ���������:',(s/k):1:2);
  writeln('��������� �������:',n);
end.

      
    