Program nO_015;
var F: text; stroka,tab: string; w,b,k,i,a: integer;
function new_format(l_stroka: string; l_k: integer): integer;
  var l_i,l_m: integer;
  begin
    if length(l_stroka)<(w-l_k) then
      begin
        write(l_stroka+' ');
        result:=l_k+length(l_stroka)+1;
        a:=1;
        exit;
      end;
    while length(l_stroka)>=(w-l_k)do
      begin
        for l_i:=(w-l_k) downto 1 do
          if (l_stroka[l_i]=' ')or(l_stroka[l_i]='.')or(l_stroka[l_i]=',')or
             (l_stroka[l_i]='!')or(l_stroka[l_i]='?')or(l_stroka[l_i]='-')or
             (l_stroka[l_i]=':')or(ord(l_stroka[l_i])=39)or(l_stroka[l_i+1]=' ') then
            begin
              writeln(copy(l_stroka,1,l_i));
              delete(l_stroka,1,l_i);
              l_m:=1;
              l_k:=0;
              break;
            end;
        if l_m<>1 then
          begin
            writeln();
            l_k:=0;
          end;
        l_m:=0;
      end;
    if length(l_stroka)=w then
      begin
        writeln(l_stroka+' ');
        result:=0;
        a:=0;
      end
    else
      begin
        write(l_stroka+' ');
        result:=l_k+length(l_stroka)+1;
        a:=1;
      end;
  end;
begin
  assign(F,'input.txt'); reset(F);
  readln(F,w,b);
  k:=b;
  for i:=1 to b do
    begin
      tab:=tab+' ';
      write(' ');
    end;
  while eof(F)=false do
    begin
      readln(F,stroka);
      if stroka='' then 
        begin
          k:=length(tab);
          if a=1 then
            begin
              writeln(); write(tab);
            end
          else write(tab);
        end;
      k:=new_format(stroka,k);
    end;
end.