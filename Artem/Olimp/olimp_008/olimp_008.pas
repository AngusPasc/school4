program zadacha_8;
var ch,ch_max,ch_min:integer;
    f:text;
begin
  assign(f,'dices.in.txt');
  reset(f);
  read(f,ch);
  close(f);
  assign(f,'dices.out.txt');
  rewrite(f);
  write(f,(ch div 6)+7-(ch mod 6),' ',ch*6);
  close(f);
end.