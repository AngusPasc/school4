Program n_009_3;
var F:text; stroka,name,no_name:string;
    N,err,no_win,max,a,k:integer;
function to_result(l_stroka:string):integer;
  var l_i,l_result,err:integer;
  begin
    for l_i:=1 to 3 do delete(l_stroka,1,pos(' ',l_stroka));
    val(l_stroka,l_result,err);
    result:=l_result;
  end;
begin
  assign(F,'ввод.txt'); reset(F);
  readln(F,stroka);
  val(stroka,N,err);
  while eof(F)=false do
    begin
      readln(F,stroka);
      if to_result(stroka)=no_win then a:=a+1;
      if to_result(stroka)=max then k:=k+1;
      if to_result(stroka)>max then
        begin
          no_name:=name;
          no_win:=max;
          max:=to_result(stroka);
          name:=copy(stroka,1,pos(' ',stroka)); delete(stroka,1,pos(' ',stroka));
          name:=name+copy(stroka,1,pos(' ',stroka)-1);
          a:=k; k:=1;
        end;
    end;
    
//исключение: когда максимальный бал идет первым
  if no_win=0 then
    begin
      reset(F);readln(F);
      while eof(F)=false do
        begin
          readln(F,stroka);
          if to_result(stroka)=no_win then a:=a+1;
          if (to_result(stroka)>no_win)and(to_result(stroka)<max)then
            begin
              no_win:=to_result(stroka); a:=1;
              no_name:=copy(stroka,1,pos(' ',stroka)); delete(stroka,1,pos(' ',stroka));
              no_name:=no_name+copy(stroka,1,pos(' ',stroka)-1);
            end;
        end;
    end;
  
  if k<=N*0.25 then
    begin
      if a=1 then write(no_name)
      else write(a);
    end
  else
    begin
      if max>300 then
        begin
          if a=1 then write(no_name)
          else write(a);
        end
      else
        begin
          if k=1 then write(name)
          else write(k);
        end;
    end;
end.