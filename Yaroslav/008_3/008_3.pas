Program n_008_3;
var N,i,err,max1,max2,score,k,j:integer; stroka,name1,name2,stroka_cop:string; F:text;
function to_name(l_stroka:string):string;
var l_name:string;
  begin
    l_name:=copy(l_stroka,1,pos(' ',l_stroka)); delete(l_stroka,1,pos(' ',l_stroka));
    l_name:=l_name+copy(l_stroka,1,pos(' ',l_stroka)-1);
  result:=l_name;
  end;
begin
  assign(F,'ввод.txt');
  reset(F);
  readln(F,stroka);
  val(stroka,N,err);
  for i:=1 to N do
    begin
      readln(F,stroka);
      stroka_cop:=stroka;
      delete(stroka,1,length(stroka)-3);
      delete(stroka,1,pos(' ',stroka));
      val(stroka,score,err);
      //получили из строки целочисленное значение результата
      if (score=max1)and(score>200) then k:=k+1;
      if (score>max1)and(score>200) then
        begin
          name1:=to_name(stroka_cop); k:=1;
          max1:=score; continue;
        end;
      //вычислили, является ли этот результат максимальным
      if score=max2 then j:=j+1;
      if score>max2 then
        begin
          name2:=to_name(stroka_cop); j:=1;
          max2:=score; 
        end;
      //провели аналагочиные сравнеия для второго по максимальности результата
    end;
  if k=1 then writeln(name1)
  else writeln(k);
  if j=1 then writeln(name2)
  else writeln(j);
end.