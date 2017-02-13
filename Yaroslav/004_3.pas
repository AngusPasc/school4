Program n_004_3;
var a,b,b1:string;
    c,f,k,n,i,j,m,l,znak:integer;
function v_10(str:string):integer;
  var i,k,d,c:integer;
  begin
    c:=length(str);
    k:=1;
    for i:=c downto 1 do
      begin
        if (str[i]>='A') then
          begin
            d:=d+(ord(str[i])-55)*k;
            k:=k*n;
          end
        else
          begin
            d:=d+(ord(str[i])-48)*k;
            k:=k*n;
          end;
      end;
    result:=d;
  end;
begin
  readln(a);
  l:=0;
  for i:=1 to (length(a)) do
  begin
    if (a[i]='_') then
      begin
        b1:=b;
        b:='';
        continue;
      end;
    if (a[i]='+')or(a[i]='-')or(a[i]='=') then
      begin
        l:=l+1;
        m:=1; n:=1;
        for j:=length(b) downto 1 do
          begin
            n:=(ord(b[j])-48)*m;
            m:=m*10;
            writeln(n);
          end;
        if (l=1) then
          begin
            f:=v_10(b1);
            c:=c+f;
            if (a[i]='+') then
              znak:=1;
            if (a[i]='-') then
              znak:=0;
          end;
        if (l=2) then
          begin
            f:=v_10(b1);
            if (znak=1) then
              begin
                c:=c+f;
              end;
            if (znak=0) then
              begin
                c:=c-f;
              end;
            l:=1;
            if (a[i]='+') then
              znak:=1
            else
              znak:=0;
          end;
        b:='';
        continue;
      end;
    b:=b+a[i];
    end;
  write(c);
end.