Program nO_12;
var F:text; a,b,k,i,err:integer; stroka:string; arr: array of integer;
function F1(l_ch:integer):integer;
  begin
    if (l_ch div k)<=1 then result:=0;
    if (l_ch div (i+1))>1 then result:=l_ch mod i
    else result:=(l_ch div k)-1;
  end;
begin
  assign(F,'wheel.in.txt'); reset(F);
  readln(F,a); setlength(arr,a);
  readln(F,stroka); stroka:=stroka+' ';
  for i:=0 to a-1 do
    begin
      val(copy(stroka,1,pos(' ',stroka)-1),arr[i],err);
      delete(stroka,1,pos(' ',stroka));
    end;
  readln(F,a,b,k);
  write(max(max(arr[0+F1(a)],arr[i-F1(b)]),max(arr[0+F1(a)],arr[i-F1(a)])));
end.