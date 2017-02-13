Program n_008_1;
var i,n,max_,max_6,max_2,max_3,pr,kontr,ch_int,err:integer; stroka:string;F:text;
begin
  assign(F,'ввод.txt');
  reset(F);
  readln(F,n);
  for i:=1 to n do
    begin
      readln(F,stroka);
      val(stroka,ch_int,err);
      if (ch_int mod 6=0)and(ch_int>max_6) then
        begin
          max_6:=ch_int;continue;
        end
      else
        if ch_int>max_ then max_:=ch_int;
      if (ch_int mod 2=0)and(ch_int>max_2) then
        begin
          max_2:=ch_int;continue;
        end;
      if (ch_int mod 3=0)and(ch_int>max_3) then max_3:=ch_int;
    end;
  pr:=max(max_*max_6, max_2*max_3);
  readln(F,stroka);
  val(stroka,kontr,err);
  if pr=kontr then
    begin
      writeln('Вычисленное контрольное значение: ',pr);
      writeln('Контроль пройден');
    end
  else 
    begin
      writeln('Вычисленное контрольное значение: ',pr);
      writeln('Контроль не пройден');
    end;
end.