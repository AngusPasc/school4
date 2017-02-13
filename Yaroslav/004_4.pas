Program n_004_4;
var osnovanie_str, chislo_str: string;
    chislo_int:integer;
{функция для перевода числа из десятичной в n}
function to_n(l_chislo:integer; l_osnov:string):string;
  var l_ost,l_osnov_int,len_l_stroka,l_i,l_j,l_k:integer;
      l_stroka:string;
  begin
    l_chislo:=l_chislo-1;
    l_osnov_int:=length(l_osnov);
    while l_chislo<>0 do
      begin
        l_ost:=l_chislo mod l_osnov_int;
        l_stroka:=chr(l_ost+48)+l_stroka;
        l_chislo:=l_chislo div l_osnov_int;
      end;
    len_l_stroka:=length(l_stroka);
    for l_i:=1 to l_osnov_int do
      begin
        for l_j:=1 to len_l_stroka do
          begin
            if l_i-1=(ord(l_stroka[l_j])-48) then
              begin
                insert(l_osnov[l_i],l_stroka,l_j);
                delete(l_stroka,l_j+1,1);
              end;
          end;
      end;
    if length(l_stroka)<length(chislo_str) then
      begin
        l_k:=length(chislo_str)-length(l_stroka);
        while l_k<>0 do
          begin
            l_stroka:=osnovanie_str[1]+l_stroka;
            l_k:=l_k-1;
          end;
      end;
    result:=l_stroka;
  end;
{функция для перевода из n в десятичную систему}
function to_10(l_stroka:string; l_osnov:string):integer;
  var l_i,l_j,l_k,l_osnov_int,l_chislo:integer;
      l_stroka_str:string;
  begin
    l_k:=1;
    l_osnov_int:=length(l_osnov);
    for l_i:=1 to length(l_stroka) do
      begin
        for l_j:=1 to length(l_osnov) do
          begin
            if l_stroka[l_i]=l_osnov[l_j] then l_stroka_str:=l_stroka_str+chr(l_j-1+ord('0'));
          end;
      end;
    for l_i:=length(l_stroka_str) downto 1 do
          begin
            l_chislo:=l_chislo+(ord(l_stroka_str[l_i])-48)*l_k;
            l_k:=l_k*l_osnov_int;
          end; 
    result:=l_chislo;
  end;
{считает промежутки}
function kol_chisel(l_1,l_2:string):integer;
var l_otv:string;
    l_kol:integer;
begin
  writeln('Do you want to include both words?');
  readln(l_otv);
  if (l_otv='yes') or (l_otv='Yes') or (l_otv='да') or (l_otv='Да') then
    begin
       if to_10(chislo_str,osnovanie_str)>chislo_int then l_kol:=to_10(chislo_str,osnovanie_str)-chislo_int
       else l_kol:=chislo_int-to_10(chislo_str,osnovanie_str);
    end
  else 
    begin
      writeln('Hm, do you prefer to include first word or second word?');
      readln (l_otv);
      if (l_otv='yes') or (l_otv='Yes') or (l_otv='да') or (l_otv='Да') then
        begin
          if to_10(chislo_str,osnovanie_str)>chislo_int then l_kol:=to_10(chislo_str,osnovanie_str)-chislo_int-1
          else l_kol:=chislo_int-to_10(chislo_str,osnovanie_str)-1;
        end
      else
        begin
          if to_10(chislo_str,osnovanie_str)>chislo_int then l_kol:=to_10(chislo_str,osnovanie_str)-chislo_int-2
          else l_kol:=chislo_int-to_10(chislo_str,osnovanie_str)-2;
        end;
    end;
  result:=l_kol;
end;

begin
  writeln('Hello, could u enter the radix');
  readln(osnovanie_str);
  while pos(' ',osnovanie_str)<>0 do delete(osnovanie_str, pos(' ',osnovanie_str),1);
  writeln('OK, now please enter the word');
  readln(chislo_str);
  writeln('Yes, bro, u have been entered: ',chislo_str,', and the number of the word is ',to_10(chislo_str,osnovanie_str)+1);
  writeln('Let is continue, enter the number of new word');
  readln(chislo_int);
  writeln('Number of the word is ',chislo_int,', and your word: ',to_n(chislo_int, osnovanie_str));
  writeln('Now we are going to calculate the space between the words');
  writeln('The number of words between the words: ',kol_chisel(chislo_str,to_n(chislo_int, osnovanie_str)));
  writeln('Good night, Сергей Игоревич))')
end.
  