Program nO_013;
var F,F2: text; stroka,name: string; n,T1,T2,T3: integer;

function name_changer(l_k,l_n: integer):string;
  var l_s1,l_s2,l_stroka: string;
  begin
    str(l_k,l_s1); str(l_n,l_s2);
    if l_k<=9 then l_stroka:='type'+l_s2+'-00'+l_s1+'-data.txt';
    if (l_k>9)and(l_k<=99) then l_stroka:='type'+l_s2+'-0'+l_s1+'-data.txt';
    if l_k>=100 then l_stroka:='type'+l_s2+'-'+l_s1+'-data.txt';
    result:=l_stroka;
  end;

function delete_double(l_stroka: string; znak: char):string;
  var l_i: integer;
  begin
    while pos(znak+znak,l_stroka)<>0 do
      begin
        l_i:=l_i+1;
        if (l_stroka[l_i]=znak)and(l_stroka[l_i+1]=znak) then 
          begin
            delete(l_stroka,pos(znak+znak,l_stroka),1);
            l_i:=l_i-1;
          end;
      end;
    result:=l_stroka;
  end;

procedure type1(l_stroka: string);
  var l_F: text; l_i: integer; l_stroka_new: string;
  begin
    T1:=T1+1;
    assign(l_F,'output\'+name_changer(T1,n)); rewrite(l_F);
    for l_i:=1 to length(l_stroka) do
      if (((ord(l_stroka[l_i])>=ord('A'))and(ord(l_stroka[l_i])<=ord('Z'))))or(((ord(l_stroka[l_i])>=ord('a'))and(ord(l_stroka[l_i])<=ord('z'))))or
      (((ord(l_stroka[l_i])>=ord('À'))and(ord(l_stroka[l_i])<=ord('ß'))))or(((ord(l_stroka[l_i])>=ord('à'))and(ord(l_stroka[l_i])<=ord('ÿ')))) then
        l_stroka_new:=l_stroka_new+copy(l_stroka,l_i,1)
      else
        if (l_stroka[l_i]=' ')and(l_stroka[l_i+1]<>' ')and(l_stroka[l_i-1]<>' ')then
          l_stroka_new:=l_stroka_new+copy(l_stroka,l_i,1);
    write(l_F,delete_double(l_stroka_new,' '));
    close(l_F);
  end;

procedure type2(l_stroka: string);
  var l_F: text; l_i: integer; l_stroka_new: string;
  begin
    T2:=T2+1;
    assign(l_F,'output\'+name_changer(T2,n)); rewrite(l_F);
    for l_i:=1 to length(l_stroka) do
    begin
      if l_i>length(l_stroka) then break;
      if (l_stroka[l_i]=' ')and(((l_stroka[l_i-1]='.')and(l_stroka[l_i+1]='.'))or((l_stroka[l_i-1]=',')and(l_stroka[l_i+1]=','))or
      ((l_stroka[l_i-1]='!')and(l_stroka[l_i+1]='!'))or((l_stroka[l_i-1]='?')and(l_stroka[l_i+1]='?'))or((l_stroka[l_i-1]=':')and(l_stroka[l_i+1]=':'))or
      ((l_stroka[l_i-1]='-')and(l_stroka[l_i+1]='-')))then delete(l_stroka,l_i,1);
    end;
  for l_i:=1 to length(l_stroka) do
    begin
      if l_i>length(l_stroka) then break;
      case l_stroka[l_i] of
        '.': l_stroka:=delete_double(l_stroka,'.');
        ',': l_stroka:=delete_double(l_stroka,',');
        '!': l_stroka:=delete_double(l_stroka,'!');
        '?': l_stroka:=delete_double(l_stroka,'?');
        ':': l_stroka:=delete_double(l_stroka,':');
        '-': l_stroka:=delete_double(l_stroka,'-');
        ' ': l_stroka:=delete_double(l_stroka,' ');
      end;
    end;
    for l_i:=1 to length(l_stroka) do
      begin
        if l_i>length(l_stroka) then break;
        if (l_stroka[l_i]=' ')and((l_stroka[l_i+1]='.')or(l_stroka[l_i+1]=',')or(l_stroka[l_i+1]='?')or(l_stroka[l_i+1]='!')or(l_stroka[l_i+1]=':')or
        (l_stroka[l_i+1]='-')) then delete(l_stroka,l_i,1);
        l_stroka:=l_stroka+' ';
        if (l_stroka[l_i+1]<>' ')and((l_stroka[l_i]='.')or(l_stroka[l_i]=',')or(l_stroka[l_i]='?')or(l_stroka[l_i]='!')or(l_stroka[l_i]=':')or
        (l_stroka[l_i]='-')) then 
          l_stroka:=copy(l_stroka,1,l_i)+' '+copy(l_stroka,l_i+1,length(l_stroka)-l_i);
        delete(l_stroka,length(l_stroka),1);
      end;
    write(l_F,l_stroka); close(l_F);
  end;

procedure type3(l_stroka: string);
  var l_i,l_j: integer; l_F: text;
  begin
    T3:=T3+1;
    assign(l_F,'output\'+name_changer(T3,n)); rewrite(l_F);
    for l_i:=1 to length(l_stroka) do
    if (l_stroka[l_i]='.')or(l_stroka[l_i]='!')or(l_stroka[l_i]='?') then
      begin
        writeln(l_F,copy(l_stroka,l_j+2,l_i-l_j-1));
        l_j:=l_i;
      end;
    close(l_F);
  end;

begin
  assign(F,'input\input.txt'); reset(F);
  while eof(F)=false do
    begin
      readln(F,name);
      assign(F2,'input\'+name); reset(F2);
      readln(F2,n); readln(F2,stroka);
      case n of 
        1: type1(stroka);
        2: type2(stroka);
        3: type3(stroka);
      end;
      close(F2);
    end;
end.