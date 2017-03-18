Program nO_014;
var arr: array of string; arr_k: array of integer; stroka,s: string; i,j,n,k,err,nomber,count: integer; F: text;
begin
      assign(F,'school.in.txt'); reset(F);
      readln(F,n); 
      setlength(arr,n); setlength(arr_k,n);
      count:=-1;
      while eof(F)=false do
         begin
          readln(F,stroka);
          s:='';
          for j:=1 to length(stroka) do
                  if (ord(stroka[j])>=ord('0'))and(ord(stroka[j])<=ord('9')) then s:=s+stroka[j];
          i:=0;
          while (s<>arr[i]) and (i<=count) do i:=i+1;
          if i<=count then arr_k[i]:=arr_k[i]+1
          else 
                begin
                  arr[i]:=s;
                  count:=count+1;
                  arr_k[i]:=arr_k[i]+1;
                end;
         end;
       for i:=0 to n-1 do
         if (arr_k[i]<=5)and(arr_k[i]<>0) then k:=k+1;
       writeln(k);
       for i:=0 to n-1 do
          if arr_k[i]<=5 then writeln(arr[i]);
end.