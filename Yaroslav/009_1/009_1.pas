Program n_009_1;
var F:text; arr: array of string;
    M,err,k,a,b,i:integer; stroka,time:string;
function to_time(l_stroka:string):string;
var l_time:string;
  begin
    delete(l_stroka,1,pos(' ',l_stroka));
    l_time:=copy(l_stroka,1,length(l_stroka));
  result:=l_time;
  end;
begin
  assign(F,'ввод.txt'); reset(F);
  readln(F,stroka);
  readln(F,stroka);
  val(stroka,M,err);
  setlength(arr,M);
  k:=-1;
  while eof(F)=false do
    begin
      readln(F,stroka);
      time:=to_time(stroka);
      for i:=0 to k do
        begin
          val(copy(arr[i],pos(' ',arr[i])+1,2),a,err);
          val(copy(time,1,pos(':',time)-1),b,err);
          if b=a then
            begin
              val(copy(arr[i],length(arr[i])-1,2),a,err);
              val(copy(time,pos(' ',time)-2,2),b,err);
              if b>=a then 
                begin
                  writeln(copy(stroka,1,pos(' ',stroka)),i+1);
                  arr[i]:=time;
                  err:=1;
                  break;
                end;
            end;
          if b>a then
            begin
              writeln(copy(stroka,1,pos(' ',stroka)),i+1);
              arr[i]:=time;
              err:=1;
              break;
            end;
        end;
        if err<>1 then
          begin
            k:=k+1;
            if k+1>M then continue
            else
              begin
                writeln(copy(stroka,1,pos(' ',stroka)),k+1);
                arr[k]:=time;
              end;
          end;
    end;
end.