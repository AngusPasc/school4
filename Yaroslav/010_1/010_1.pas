Program n_010_1;
var F:text; arr_min: array of integer; arr_max: array of integer;
      ch1,ch2,i,k,j,x1,x2,max1,max2,n:integer;
begin
      assign(F,'ввод.txt'); reset(F);
      readln(F,n);
      setlength(arr_min,n); setlength(arr_max,n);
      while eof(F)=false do
         begin
          readln(F,ch1,ch2);
          if (ch1=0)and(ch2<0) then
                begin
                  k:=k+1;
                  arr_min[k]:=ch2;
                  for i:=1 to k-1 do
                   begin
                        if (ch2-arr_min[i])>max1 then max1:=ch2-arr_min[i];
                   end;
                   continue;
                end;
          if (ch1=0)and(ch2>0) then
                begin
                  j:=j+1;
                  arr_max[j]:=ch2;
                  for i:=1 to j-1 do
                   begin
                      if (ch2-arr_max[i])>max2 then max2:=ch2-arr_max[i];
                   end;
                end
           else 
                begin
                  if ch2<0 then
                    if abs(ch1)>x1 then x1:=abs(ch1);
                  if ch2>0 then
                    if abs(ch1)>x2 then x2:=abs(ch1);
                end;
         end;
       write(max((x1*max1)/2,(x2*max2)/2));
end.