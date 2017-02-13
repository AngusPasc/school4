Program O_3;
var ch,i,j,k,max:integer; ch_dv:string; ch_real:real;
begin
  readln(ch);
  while ch<>0 do
    begin
      ch_dv:=chr((ch mod 2)+ord('0'))+ch_dv;
      ch:=ch div 2;
    end;
  for i:=1 to length(ch_dv) do
    begin
      for j:=1 to length(ch_dv) do
        if ch_dv[j]='1' then k:=k+1
        else break;
      if k>max then max:=k;
      k:=0;
      ch_dv:=copy(ch_dv,length(ch_dv),1)+ch_dv;
      delete(ch_dv,length(ch_dv),1);
    end;
  for i:=1 to max do ch_real:=ch_real+power(2,length(ch_dv)-i);
  write(ch_real);
end.