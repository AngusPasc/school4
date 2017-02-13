Program n_006_1;
var F:text;str:string;
    arr:array [1..31] of real;
    day,night,sred,a:real; i,k,err:integer;
begin
  assign(F,'vvod.txt');
  reset(F); i:=1;
  while eof(F)=false do
    begin
      readln(F,str);
      delete(str,1,3);
      val(copy(str,1,pos(' ',str)-1),day,err);
      val(copy(str,pos(' ',str)+1,length(str)),night,err);
      arr[i]:=(day+night)/2;
      i:=i+1;
    end;
  k:=0;
  for i:=1 to 31 do
    begin
      if arr[i]>a then
        begin
          a:=arr[i];
          sred:=sred+arr[i];
          k:=k+1;
        end
      else 
        begin
          if k>1 then
            writeln('ѕервый день: ',i-k,'; ','последний день: ',i-1,'; ','средн€€ температура: ',sred/k:1:2);
          a:=0; k:=0; sred:=0;
          a:=arr[i];
          sred:=sred+arr[i];
          k:=k+1;
        end;
      if i=31 then 
        begin
          if k>1 then
            writeln('ѕервый день: ',i-k+1,'; ','последний день: ',i,'; ','средн€€ температура: ',sred/k:1:2);
        end;
    end;
end.