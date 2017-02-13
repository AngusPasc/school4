Program n_007_1;
var name:array [1..6] of string; count: array [1..6] of integer;
      c,i,j,n:integer; str:string;
begin
      c:=0;
      readln(n);
      for i:=1 to n do 
         begin
                readln(str);
                j:=1;
                while (j<=c) do 
                   begin
                         if str=name[j] then break;
                         j:=j+1;
                   end;
                 if (j<=c) then count[j]:=count[j]+1
                 else 
                   begin 
                         name[c+1]:=str;
                         count[c+1]:=1;
                         c:=c+1;
                   end;
         end;
       for i:=1 to c-1 do
          for j:=i+c to c do
                if count[i] < count[j] then
                   begin
                         str:=name[i];
                         name[i]:=name[j];
                         name[j]:=str;
                         n:=count[i];
                         count[i]:=count[j];
                         count[j]:=n;
                   end;
         for i:=1 to c do writeln(name[i],' ',count[i]);
end.