program olimp_012;
var n,a,b,k,err,i,v:integer;
    baza:array of integer;
    f:text;
    str:string;
begin
  assign(f,'wheel.in.txt');
  reset(f);
  readln(f,str);
  val(str,n,err);
  setlength(baza,n);
  readln(f,str);
  str:=str+' ';
  for i:=0 to n-1 do 
    begin
      val(copy(str,1,pos(' ',str)-1),baza[i],err);
      delete(str,1,pos(' ',str));
    end;
  readln(f,a,b,k);
  close(f);
  assign(f,'wheel.out.txt');
  rewrite(f);
  if ((n-1)*k>=a)and((n-1)*k<=b)then write(f,baza[n-1])
  else 
    begin
      for i:=a to b do
        begin
          if ((baza[((i div k)mod n)])>(baza[n-((i div k)mod n)-1]))and
             ((baza[((i div k)mod n)])>=v)then v:=baza[((i div k)mod n)-1];
          if ((baza[((i div k)mod n)])<=(baza[n-((i div k)mod n)-1]))and
             ((baza[n-((i div k)mod n)-1])>=v)then v:=baza[n-((i div k)mod n)];
        end;
      write(f,v);
    end;
  close(f);
end.