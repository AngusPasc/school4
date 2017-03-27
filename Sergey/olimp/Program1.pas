program prog3;
var
b: array [1..10] of longint;
n: longint;
i, j, k, count: integer;
f: text;

function IsCurrect(nch, arrpos: integer): boolean;
var
j, i: integer;
begin
//проверка на делитель-не делитель
if n mod nch <> 0 then
  begin
    IsCurrect:=false;
    exit;
  end;
//-------------------------------
//проверка произведения
j:=1;
for i:=1 to arrpos-1 do
  j:=j*b[i];
j:=j*nch;
if j > n then
  begin
    IsCurrect:=false;
    exit;
  end;
//---------------------
//проверка, что b[i] и новый элементы взаимно просты
if arrpos <> 1 then
for i:=2 to b[arrpos-1] do
  if (b[arrpos-1] mod i = 0) and (nch mod i = 0) then
    begin
      IsCurrect:=false;
      exit;     
    end;
//--------------------------------------------------
IsCurrect:=true;
end;

procedure rec(p: integer);
var
j, i, m: integer;
begin
i:=b[p];
if p = 1 then rec(p+1);
if p <> 1 then m:=p-1 else m:=1;
for i:=b[m]+1 to n do
  begin
    if IsCurrect(i, p) then
      begin
        b[p]:=i;
        if p = k then
          begin
            count:=count+1;
            write(count, '. ');
            for j:=1 to k do
              write(b[j], ' ');
            writeln;
          end
        else
          rec(p+1);
      end;
  end;
end;


begin
assign(f, 'in.txt');
reset(f);
readln(f, n, k);
close(f);
writeln('n = ', n, ' k = ', k);
b[1]:=1;
for i:=2 to k do
  begin
    for j:=b[i-1]+1 to n do
      if IsCurrect(j, i) then
        begin
          b[i]:=j;
          break;
        end;      
  end;
count:=0;
writeln('наборы:');
rec(1);
end.