Program n_010_3;
type pas=record
     name:string;
     time:integer; end;
var arr:array of pas; F:text;
    H,M,N,i,j,k,time,time_0,err,min:integer;
    stroka:string;
begin
  assign(F,'ввод.txt'); reset(F);
  readln(F,stroka);
  val(copy(stroka,1,2),H,err);
  val(copy(stroka,pos(':',stroka)+1,2),M,err);
  time_0:=H*60+M;
  readln(F,stroka); val(stroka,N,err);
  setlength(arr,N);
  while eof(F)=false do
    begin
      readln(F,stroka);
      val(copy(stroka,pos(' ',stroka)+1,2),H,err);
      val(copy(stroka,pos(':',stroka)+1,2),M,err);
      time:=H*60+M;
      if (time-time_0)<=3*60 then
        begin
          arr[j].name:=copy(stroka,1,pos(' ',stroka)-1);
          arr[j].time:=time;
          j:=j+1;
        end;
    end;
  min:=32767;
  while j<>0 do
    begin
      min:=32766;
      for i:=0 to j-1 do
        if arr[i].time<min then
          begin
            min:=arr[i].time;
            k:=i;
          end;
      writeln(arr[k].name);
      arr[k].time:=32767;
      j:=j-1;
    end;
end.