Program nO_9;
var a,b,time,time2,i,j:integer; x:real;
function F(l_a,l_b:integer):integer;
  var l_time,l_i:integer;
  begin
    while (l_time<=x/1000) do
    begin
      if (l_i mod 2)=0 then l_time:=l_time+l_a
      else l_time:=l_time+l_b;
      i:=i+1;
    end;
  result:=l_time;
  end;
function F2(l_i:integer):integer;
  begin
    if (l_i-1) mod 2<>0 then write(x/min(time,time2))
    else 
      if min(time,time2)-(x/1000)<a then write(1000);
  end;
begin
  readln(a,b,x);
  i:=1;
  if x/b<=1000 then 
    begin
      write(x/b);
      exit;
    end;
  time:=F(a,b); j:=i;
  time2:=F(b,a);
  if time<time2 then a:=F2(j)
  else b:=F2(i);
end.