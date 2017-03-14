Program nO_014;
var arr_sch: array of string; arr_k: array of integer;
    ch,i,k: integer; stroka,s: string; F: text;
begin
  assign(F,'school.in.txt'); reset(F);
  readln(F,ch);
  setlength(arr_sch,ch-1); setlength(arr_k,ch-1);
  k:=-1;
  while eof(F)=false do
    begin
      readln(F,stroka); ch:=0;
      for i:=1 to length(stroka) do
        if (stroka[i]>='0')and(stroka[i]<='9') then s:=s+stroka[i];
      for i:=0 to k+1 do
        if arr_sch[i]=s then 
          begin
            arr_k[i]:=arr_k[i]+1;
            ch:=1;
          end;
        if ch<>1 then
          begin
            k:=k+1;
            arr_sch[k]:=s;
            arr_k[k]:=arr_k[i]+1;
          end;
        s:='';
    end;
  ch:=0;
  for i:=0 to k do
    if arr_k[i]<=5 then ch:=ch+1;
  writeln(ch);
  for i:=0 to k do
    if arr_k[i]<=5 then writeln(arr_sch[i]);
end.