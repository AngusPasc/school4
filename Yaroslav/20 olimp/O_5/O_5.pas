Program n_5;
var arr:array of char; arr_sms:array of char;
    N,i,j,a,b:integer; F:text; stroka:string;
begin
//по шифрование дела такие: если цифра, то пор€дковый номер буквы из закодированого сообщени€ будет цифра плюс 1
//при букве Ч пор€дковый номер равен номеру буквы в алфавите плюс 10 
  assign(F,'input.txt'); reset(F);
  readln(F,N);
  setlength(arr,N*N); setlength(arr_sms,N*N);
  a:=-1; b:=-1;
  for i:=1 to N*2 do
    begin
      readln(F,stroka);
      if i<=N then
        begin
          for j:=1 to N do arr[j+a]:=stroka[j];
          a:=a+N;
        end
      else 
        begin
          for j:=1 to N do
            begin
              if (stroka[j]>='0')and(stroka[j]<='9') then arr_sms[ord(stroka[j])-ord('0')]:=arr[j+b]
              else arr_sms[ord(stroka[j])-ord('A')+10]:=arr[j+b];
            end;
          b:=b+N;
        end;
    end;
  close(F);
  assign(F,'output.txt');
  rewrite(F);
  for i:=0 to N*N-1 do write(F,arr_sms[i]);
  close(F);
end.