Program n_009_2;
var i,j,k:integer; stroka,ch_str,ch_new,cifra:string;
function to_zerkalo(l_stroka:string):string;
  var l_ch,err:integer; l_ch_new,l_a:string;
  begin
    val(l_stroka,l_ch,err);
    while l_ch<>0 do
      begin
        str(l_ch mod 10,l_a);
        l_ch_new:=l_ch_new+l_a;
        l_ch:=l_ch div 10;
      end;
    result:=l_ch_new;
  end;
begin
  readln(stroka);
  for i:=1 to length(stroka)-1 do
    if (ord(stroka[i])>=ord('0'))and(ord(stroka[i])<=ord('9')) then ch_str:=ch_str+stroka[i];
  if length(ch_str)=1 then
    begin
      writeln('YES');
      write(ch_str);
      halt(1);
    end;
  if (length(ch_str)=3)or(length(ch_str)=2) then
    begin
      for i:=1 to length(ch_str) do
        if ch_str[i]='0' then k:=k+1;
      if k=2 then 
        begin
          write('NO');
          halt(1);
        end;
    end;
  k:=0;
  for i:=1 to length(ch_str)-1 do
    for j:=i+1 to length(ch_str) do
      if ch_str[i]=ch_str[j] then 
        begin
          k:=k+1;
          ch_new:=ch_new+ch_str[i];
        end; 
  if k=0 then write('NO');
  if ch_new[1]='0' then
    begin
      delete(ch_new,1,1);
      ch_new:=ch_new+'0';
    end;
  if (k*2+1)=length(ch_str) then
    begin
      writeln('YES');
      for i:=1 to length(ch_str) do
        begin
          k:=0;
          for j:=1 to length(ch_new) do
            if ch_str[i]=ch_new[j] then k:=k+1;
          if k=0 then cifra:=ch_str[i];
        end;
      write(ch_new,cifra,to_zerkalo(ch_new));
      halt(1);
    end;
  if (k*2)=length(ch_str) then 
    begin
      writeln('YES');
      write(ch_new,to_zerkalo(ch_new));
    end
  else write('NO');
end.