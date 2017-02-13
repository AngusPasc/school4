Program n_007_2;
type dvoiki=record
      name:string;
      dv:integer;
end;
var arr:array of dvoiki;
    F:text; i,j,k,n,err:integer; stroka:string;
begin 
  assign(F,'ввод.txt');
  reset(F);
  readln(F,stroka);
  val(stroka,i,err);
  setlength(arr,i);
  while eof(F)=false do begin
      readln(F,stroka);
      for i:=1 to length(stroka) do begin
          if stroka[i]=' ' then k:=k+1;
          if k=2 then break;
        end;
      k:=0;
  //отбрасываем НЕ двоечников
      for j:=(length(stroka)-i) to length(stroka) do
        if stroka[j]='2' then k:=k+1;
      if k>0 then begin
          arr[n].name:=copy(stroka,1,i-1);
          arr[n].dv:=k;
          n:=n+1;
          k:=0;
        end;
    end;
  //начинаем сортировку
  for i:=0 to n-1 do
    for j:=i+1 to n do
      if arr[i].dv<arr[j].dv then begin
          k:=arr[i].dv; stroka:=arr[i].name;
          arr[i].dv:=arr[j].dv; arr[i].name:=arr[j].name;
          arr[j].dv:=k; arr[j].name:=stroka;
        end;
  for i:=0 to n do writeln(arr[i].name);
  write('Хьюстон, у нас проблемы');
end.