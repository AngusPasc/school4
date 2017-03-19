Program nO_018;
var n,i,j,a,max,err: integer; stroka: string;
    arr: array of integer; arr_place: array of integer;
begin
  readln(n);
  setlength(arr,n); setlength(arr_place,n);
  readln(stroka); stroka:=stroka+' ';
  a:=1;
  for i:=1 to length(stroka) do
    begin
      if stroka[i]=' ' then
        begin
          val(copy(stroka,a,pos(' ',stroka)-1),arr[j],err);
          j:=j+1;
          a:=i+1;
        end;
    end;
  for i:=0 to n-1 do arr_place[i]:=arr[i];
  for i:=0 to n-2 do
    for j:=0 to (n-2)-i do
      if arr_place[j]<arr_place[j+1] then
        begin
          a:=arr_place[j];
          arr_place[j]:=arr_place[j+1];
          arr_place[j+1]:=a;
        end;
  a:=0;
  for i:=0 to n-2 do
    if arr[i]=arr_place[0] then
      if (arr[i+1] mod 10=5)and(arr[i+1]>arr[i+2]) then
        if arr[i+1]>a then a:=arr[i+1];
  for i:=0 to n-1 do
    if arr_place[i]=a then
      begin
        write(i+1); exit;
      end;
  write(0);
end.