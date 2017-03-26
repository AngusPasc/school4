Program nO_019;
var n,k,i,s: integer;
function NOD(a,b: integer): integer;
  var c: integer;
  begin
    while a<>b do
      if a>b then a:=a-b
      else b:=b-a;
    result:=a;
  end;
procedure divisors(l_ch,l_k,l_s: integer);
  var l_i,c: integer;
  begin
    if l_k<k then
      begin
        for l_i:=l_ch+1 to n do
          if (n mod l_i)=0 then
            if NOD(l_ch,l_i)=1 then
              if l_s*l_i<=n then divisors(l_i,l_k+1,l_s*l_i)
      end
    else s:=s+1;
  end;
begin
  readln(n,k);
  for i:=1 to n do divisors(i,1,i);
  write(s);
end.