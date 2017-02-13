Program n_101_2;
type time=record
     one:integer;
     two:integer;
     end;
var F:text; arr: array of time; i,j,A,B,C,D,M,ch1,ch2,perehod:integer;
begin
  assign(F,'ввод.txt'); reset(F); 
  readln(F,i); setlength(arr,i);
  readln(F,perehod);
  while eof(F)=false do
    begin
      readln(F,ch1,ch2);
      arr[j].one:=ch1; arr[j].two:=ch2;
      A:=A+ch1; B:=B+ch2;
      j:=j+1;
    end;
  M:=A;
  for i:=0 to j-1 do
    begin
      C:=C+arr[i].two;
      D:=D+arr[i].one;
      if D+(B-C)<M then M:=D+(B-C);
    end;
  write(min(B,(min(M,A)))+perehod);
end.