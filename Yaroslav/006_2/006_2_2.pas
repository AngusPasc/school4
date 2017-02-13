Program n_006_2;
var F:text; arr_19: array [1..19] of string;
    arr_90: array [1..9] of string;
    i,j,summ,k,ch_int,a:integer;ch_str:string;
begin
  assign(F,'ввод.txt');
  reset(F);
  for i:=1 to 9 do
    begin
      readln(F,ch_str);
      arr_19[i]:=ch_str;
    end;
  for i:=11 to 19 do
    begin
      readln(F,ch_str);
      arr_19[i]:=ch_str;
    end;
  for i:=1 to 9 do
    begin
      readln(F,ch_str);
      for j:=2 to 9 do
        begin
          if copy(ch_str,1,3)=copy(arr_19[j],1,3) then arr_90[i]:=ch_str;
        end;
      if ch_str='десять' then arr_90[i]:=ch_str;
      if ch_str='сорок' then arr_90[i]:=ch_str;
      end;
  writeln(arr_19);
  writeln(arr_90);
  readln(F);
  j:=0;i:=0;k:=0;
  while eof(F)=false do
    begin
      readln(F,ch_str);
      j:=0;i:=0;k:=0;ch_int:=0;
      while pos(' ',ch_str)<>0 do
        begin
          k:=k+1;
          if copy(ch_str,k,1)=' ' then
            begin
              for i:=1 to 19 do
                begin
                  if copy(ch_str,1,k-1)=arr_19[i] then
                    begin
                      ch_int:=ch_int+i;
                      delete(ch_str,1,k);
                      j:=1;
                      k:=0;
                      break;
                    end;
                end;
              if j=1 then continue
              else
                begin
                  for j:=1 to 9 do
                    begin
                      if copy(ch_str,1,k-1)=arr_90[j] then
                        begin
                          ch_int:=ch_int+j*10;
                          delete(ch_str,1,k);
                          i:=1;
                          k:=0;
                          break;
                        end;
                    end;
                end;
              if i=1 then continue
              else 
                begin
                  a:=a+1;
                  delete(ch_str,1,k);
                  k:=0;
                end;
        end;
    end;
    if a=0 then
      begin
        for i:=1 to 19 do
          begin
            if ch_str=arr_19[i] then 
              begin
                summ:=summ+ch_int+i;
                break;
              end;
          end;
        for i:=1 to 9 do
          begin
            if ch_str=arr_90[i] then 
              begin
                summ:=summ+ch_int+i*10;
                break;
              end;
          end;
      end
    else continue;
  end;
  write(summ);
end.