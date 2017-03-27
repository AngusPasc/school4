Program nO_019;
var n,k,i,s,c: integer;
function NOD(a,b: integer): integer;
  var c: integer;
  begin
    while a<>b do
      if a>b then a:=a-b
      else b:=b-a;
    result:=a;
  end;
procedure divisors(l_ch,l_k,l_s: integer);
  var l_i: integer;
  begin
    if l_k<k then
      for l_i:=l_ch+1 to n do
        if (n mod l_i)=0 then
          if NOD(l_ch,l_i)=1 then
            if l_s*l_i<=n then 
              if l_k+1=k then s:=s+1
              else divisors(l_i,l_k+1,l_s*l_i);
  end;
begin
  readln(n,k);
  for i:=1 to n do 
    begin
      if (n mod i)=0 then divisors(i,1,i);
    end;
  write(s);
end.