Program n_006_3;
var F:text; arr:array of real;
    i,j,err,N:integer; ch_str:string;
    ch,min:real;
begin
  assign(F,'ââîä.txt'); reset(F);
  readln(F,N);
  setlength(arr,N);
  for i:=0 to N-1 do
    begin
      readln(F,ch_str);
      val(ch_str,ch,err);
      arr[i]:=ch;
    end;
  min:=1000000;
  for i:=0 to N-1 do
    begin
      for j:=0 to N-1 do
        begin
          if (j-i)>=6 then
            begin
              if arr[i]*arr[j]<min then min:=arr[i]*arr[j];
            end;
        end;
    end;
  write(min);
end.