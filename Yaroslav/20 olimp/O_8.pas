Program nO_8;
var ch:integer;
begin
      readln(ch);
      write(ch*6,' ');
      case  ch mod 6 of
         0: write(ch div 6);
         5: write((ch div 6) +2);
         4: write((ch div 6) +3);
         3: write((ch div 6) +4);
         2: write((ch div 6) +5);
         1: write((ch div 6) +6);   
      end;
end.