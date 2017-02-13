Program n_004_5;
var dec:integer;
function to_Rome(l_dec:integer):string;
  var l_rome:string;
      l_k:integer;
  begin
    if (l_dec div 1000)<>0 then
      begin
        l_k:=l_dec div 1000;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'M';
            l_k:=l_k-1;
          end;
        l_dec:=l_dec mod 1000;
      end;
    if (l_dec div 900)<>0 then
      begin
        l_rome:=l_rome+'CM';
        l_dec:=l_dec mod 900;
      end;
    if (l_dec div 500)<>0 then
      begin
        l_k:=l_dec div 500;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'D';
            l_k:=l_k-1;
          end;
        l_dec:=l_dec mod 500;
      end;
    if (l_dec div 400)<>0 then
      begin
        l_rome:=l_rome+'CD';
        l_dec:=l_dec mod 400;
      end;
    if (l_dec div 100)<>0 then
      begin
        l_k:=l_dec div 100;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'C';
            l_k:=l_k-1;
          end;
        l_dec:=l_dec mod 100;
      end;
    if (l_dec div 90)<>0 then
      begin
        l_rome:=l_rome+'XC';
        l_dec:=l_dec mod 90;
      end;
    if (l_dec div 50)<>0 then
      begin
        l_k:=l_dec div 50;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'L';
            l_k:=l_k-1;
          end;
        l_dec:=l_dec mod 50;
      end;
    if (l_dec div 40)<>0 then
      begin
        l_rome:=l_rome+'XL';
        l_dec:=l_dec mod 40;
      end;
    if (l_dec div 10)<>0 then
      begin
        l_k:=l_dec div 10;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'X';
            l_k:=l_k-1;
          end;
        l_dec:=l_dec mod 10;
      end;
    if (l_dec div 9)<>0 then
      begin
        l_rome:=l_rome+'IX';
        l_dec:=l_dec mod 9;
      end;
    if (l_dec div 5)<>0 then
      begin
        l_k:=l_dec div 5;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'V';
            l_k:=l_k-1;
          end;
        l_dec:=l_dec mod 5;
      end;
    if (l_dec div 4)<>0 then
      begin
        l_rome:=l_rome+'IV';
        l_dec:=l_dec mod 4;
      end;
    if (l_dec div 1)<>0 then
      begin
        l_k:=l_dec div 1;
        while l_k<>0 do
          begin
            l_rome:=l_rome+'I';
            l_k:=l_k-1;
          end;
      end;
    result:=l_rome;
  end;
 
function to_dec(l_rome:string):integer;
  var l_k,l_dec:integer;
      l_str,l_str_2:string;
  begin
    l_k:=length(l_rome);
    while l_k>0 do
      begin
        l_str:=copy(l_rome,1,2);
        if l_str=('CM') then
          l_dec:=l_dec+900
        else
          begin
            if l_str=('XC') then
              l_dec:=l_dec+90
            else
              begin
                if l_str=('IX') then
                  l_dec:=l_dec+9
                else
                  begin
                    if l_str=('CD') then
                      l_dec:=l_dec+400
                    else
                      begin
                        if l_str=('XL') then
                          l_dec:=l_dec+40
                        else
                          begin
                            if l_str=('IV') then
                              l_dec:=l_dec+4
                            else
          begin
            l_str_2:=copy(l_str,1,1);
            if l_str_2=('M') then
              l_dec:=l_dec+1000;
            if l_str_2=('D') then
              l_dec:=l_dec+500;
            if l_str_2=('C') then
              l_dec:=l_dec+100;
            if l_str_2=('L') then
              l_dec:=l_dec+50;
            if l_str_2=('X') then
              l_dec:=l_dec+10;
            if l_str_2=('V') then
              l_dec:=l_dec+5;
            if l_str_2=('I') then
              l_dec:=l_dec+1;
              
            l_str_2:=copy(l_str,2,1);
              if l_str_2=('M') then
                l_dec:=l_dec+1000;
              if l_str_2=('D') then
                l_dec:=l_dec+500;
              if l_str_2=('C') then
                l_dec:=l_dec+100;
              if l_str_2=('L') then
                l_dec:=l_dec+50;
              if l_str_2=('X') then
                l_dec:=l_dec+10;
              if l_str_2=('V') then
                l_dec:=l_dec+5;
              if l_str_2=('I') then
                l_dec:=l_dec+1;
          end;
                          end;
                      end;
                  end;
              end;
          end;
        delete(l_rome,1,2);
        l_k:=l_k-2;
      end;
    result:=l_dec;
    end;
begin
  write('Доброе утро, мистер Старк, введите число для перевода в римскую систему счисления: ');
  readln(dec);
  writeln('Ваше число в римской системе счисления: ', to_Rome(dec));
  writeln('Теперь сделаем обратный перевод (вернем первоначальное число)');
  write('Число: ',to_dec(to_Rome(dec)));
end.

