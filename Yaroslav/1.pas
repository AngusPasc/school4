Program n_1;
var a,gl,sogl:string;
    b,c1,max,i:integer;
    c:char;
begin
  readln (a);
  b:=length(a);
  for i:=1 to b do
    begin
      c:=a[i];
      c1:=ord(c);
      if (c1>max) then
        max:=c1;
      if (c1=192) or (c1=197) or (c1=200) or (c1=206) or (c1=211) or (c1=219) or (c1=221) or (c1=222) or (c1=223) or
         (c1=224) or (c1=229) or (c1=232) or (c1=238) or (c1=243) or (c1=251) or (c1=253) or (c1=254) or (c1=255) then
         gl:=gl+c;
      if ((c1>192)and(c1<197))or((c1>197)and(c1<206))or((c1>206)and(c1<211))or((c1>211)and(c1<219))or((c1>219)and(c1<221))or
         ((c1>224)and(c1<229))or((c1>229)and(c1<232))or((c1>232)and(c1<238))or((c1>238)and(c1<243))or((c1>243)and(c1<251)) then
         sogl:=sogl+c;
    end;
  writeln(max);
  write(gl+sogl);
end.
        