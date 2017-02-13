Program n_008_2;
type tetris=record
     name:string;
     rez:integer;
     time:integer;
end;
var arr: array of tetris; F:text;
    stroka,a:string; priz,c,i,k,err,rez,time,b,d:integer;
begin
  assign(F,'ввод.txt');
  reset(F);
  readln(F,stroka);
  val(copy(stroka,1,pos(' ',stroka)),priz,err);
  val(copy(stroka,pos(' ',stroka),length(stroka)),c,err);
  setlength(arr,c); c:=0;
  while eof(F)=false do
    begin
      readln(F,stroka);
      time:=time+1;
      for i:=0 to c do
        if arr[i].name=copy(stroka,pos(' ',stroka)+1,length(stroka)) then
          begin
            val(copy(stroka,1,pos(' ',stroka)-1),rez,err);
            if rez>arr[i].rez then 
              begin
                arr[i].rez:=rez;
                arr[i].time:=time;
              end;
            k:=k+1;
          end;
      if k=0 then 
        begin
          arr[c].name:=copy(stroka,pos(' ',stroka)+1,length(stroka));
          val(copy(stroka,1,pos(' ',stroka)-1),rez,err);
          arr[c].rez:=rez;
          arr[c].time:=time;
          c:=c+1;
        end; 
      k:=0;
    end;
  for i:=0 to c-1 do
    for k:=i+1 to c do
      if arr[k].rez>arr[i].rez then
        begin
          a:=arr[i].name; b:=arr[i].rez; d:=arr[i].time;
          arr[i].name:=arr[k].name;
          arr[i].rez:=arr[k].rez;
          arr[i].time:=arr[k].time;
          arr[k].name:=a;
          arr[k].rez:=b;
          arr[k].time:=d;
        end;
  for i:=0 to c-1 do
    for k:=i+1 to c do
      if arr[k].rez=arr[i].rez then
        if arr[k].time<arr[i].time then
        begin
          a:=arr[i].name; b:=arr[i].rez; d:=arr[i].time;
          arr[i].name:=arr[k].name;
          arr[i].rez:=arr[k].rez;
          arr[i].time:=arr[k].time;
          arr[k].name:=a;
          arr[k].rez:=b;
          arr[k].time:=d;
        end;
  if c>=priz then
    for i:=0 to priz-1 do
      writeln(i+1,'. ',arr[i].name,' (',arr[i].rez,')')
  else 
    for i:=0 to c do
      writeln(i+1,'. ',arr[i].name,' (',arr[i].rez,')');
end.