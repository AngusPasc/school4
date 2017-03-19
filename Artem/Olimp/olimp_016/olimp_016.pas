program zadacha_016;
function mov_left(chislo,bk,count:integer):integer;
  var l_i,razr:integer;
  begin
    for l_i:=1 to count do
      begin
        chislo:=(chislo mod trunc(power(2,bk-1)))*2+(chislo div trunc(power(2,bk-1)));
      end;
    result:=chislo;
  end;
function mov_right(chislo,bk,count:integer):integer;
  var l_i,razr:integer;
  begin
    for l_i:=1 to count do
      begin
        chislo:=(chislo div 2)+(chislo mod 2)*trunc(power(2,bk-1));
      end;
    result:=chislo;
  end;
var ch,ch_prom,l,bk,r,complete_l,complete_r:integer;
begin
  readln(ch,l,r);
  ch_prom:=ch;
  while ch_prom<>0 do
    begin
      bk:=bk+1;
      ch_prom:=ch_prom div 2;
    end;
  l:=l mod bk;
  r:=r mod bk;
  complete_l:=mov_left(ch,bk,l);
  complete_r:=mov_right(ch,bk,r);
  writeln(complete_l,' ',complete_r);
end.