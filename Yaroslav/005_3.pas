Program n_005_3;
var str:string;
function to_cod_1(l_bukva:char;l_length:integer):char;
  var l_number:integer;l_bukva_new:char;
  begin
    l_number:=ord(l_bukva)+l_length;
    if (chr(l_number)>'Z')then l_number:=l_number-26;
    l_bukva_new:=chr(l_number);
    result:=l_bukva_new
  end;
function to_cod_2(l_bukva:char;l_length:integer):char;
  var l_number:integer;l_bukva_new:char;
  begin
    l_number:=ord(l_bukva)+l_length;
    if (chr(l_number)>'z')then l_number:=l_number-26;
    l_bukva_new:=chr(l_number);
    result:=l_bukva_new
  end;
function to_cod_3(l_bukva:char;l_length:integer):char;
  var l_number:integer;l_bukva_new:char;
  begin
    l_number:=ord(l_bukva)+l_length;
    if (chr(l_number)>'ß')then l_number:=l_number-32;
    l_bukva_new:=chr(l_number);
    result:=l_bukva_new
  end;
function to_cod_4(l_bukva:char;l_length:integer):char;
  var l_number:integer;l_bukva_new:char;
  begin
    l_number:=ord(l_bukva)+l_length;
    if (chr(l_number)>'ÿ')then l_number:=l_number-32;
    l_bukva_new:=chr(l_number);
    result:=l_bukva_new
  end;
function to_new_str(l_str:string):string;
  var l_i,l_j:integer;
      l_slovo,l_stroka_new:string;
      l_bukva_new:char;
  begin
    for l_i:=1 to length(l_str) do
      begin
        if ((l_str[l_i]>='A')and(l_str[l_i]<='Z'))or
           ((l_str[l_i]>='a')and(l_str[l_i]<='z'))or
           ((l_str[l_i]>='À')and(l_str[l_i]<='ß'))or
           ((l_str[l_i]>='à')and(l_str[l_i]<='ÿ'))then l_slovo:=l_slovo+l_str[l_i]
        else
          begin
            for l_j:=1 to length(l_slovo) do
              begin
                if (l_slovo[l_j]>='A')and(l_slovo[l_j]<='Z') then
                  begin
                    l_bukva_new:=to_cod_1(l_slovo[l_j],length(l_slovo));
                    l_stroka_new:=l_stroka_new+l_bukva_new;
                  end;
                if (l_slovo[l_j]>='a')and(l_slovo[l_j]<='z') then
                  begin
                    l_bukva_new:=to_cod_2(l_slovo[l_j],length(l_slovo));
                    l_stroka_new:=l_stroka_new+l_bukva_new;
                  end;
                if (l_slovo[l_j]>='À')and(l_slovo[l_j]<='ß') then
                  begin
                    l_bukva_new:=to_cod_3(l_slovo[l_j],length(l_slovo));
                    l_stroka_new:=l_stroka_new+l_bukva_new;
                  end;
                if (l_slovo[l_j]>='à')and(l_slovo[l_j]<='ÿ') then
                  begin
                    l_bukva_new:=to_cod_4(l_slovo[l_j],length(l_slovo));
                    l_stroka_new:=l_stroka_new+l_bukva_new;
                  end;
              end;
            l_slovo:='';
            l_stroka_new:=l_stroka_new+l_str[l_i];
          end;
      end;
    result:=l_stroka_new;
  end;
begin
  readln(str);
  write(to_new_str(str));
end.