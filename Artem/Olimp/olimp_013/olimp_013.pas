program zadacha_013;
function get_name(tip:string;count:integer):string;
  var count_str:string;
  begin
    str(count,count_str);
    if count div 100>0 then result:='type'+tip+'-'+count_str+'-'+'data.txt'
    else
      if count div 10>0 then result:='type'+tip+'-0'+count_str+'-'+'data.txt'
      else
        result:='type'+tip+'-00'+count_str+'-'+'data.txt';
  end;
procedure type_1(name_in:string;name_out:string);
  var file_1,file_2:text;
      str,str_complete:string;
      i:integer;
  begin
    assign(file_1,'input/'+name_in);
    reset(file_1);
    readln(file_1);
    assign(file_2,'output/'+name_out);
    rewrite(file_2);
    while eof(file_1)<>true do
      begin
        readln(file_1,str);
        for i:=1 to length(str)do
          if (str[i]in['A'..'Z'])or(str[i]in['a'..'z'])or 
             (str[i]in['À'..'ß'])or(str[i]in['à'..'ÿ'])or(str[i]=' ')then
            str_complete:=str_complete+str[i];
        while pos('  ',str_complete)<>0 do
          delete(str_complete,pos('  ',str_complete),1);
        writeln(file_2,str_complete);
        str_complete:='';
      end;
    close(file_1);
    close(file_2);
  end;
procedure type_2(name_in:string;name_out:string);
  var file_1,file_2:text;
      str:string;
  begin
    assign(file_1,'input/'+name_in);
    reset(file_1);
    readln(file_1);
    assign(file_2,'output/'+name_out);
    rewrite(file_2);
    while eof(file_1)<>true do
      begin
        readln(file_1,str);
        while (pos(',,',str)<>0)or(pos('..',str)<>0)or(pos('!!',str)<>0)or
              (pos('??',str)<>0)or(pos('::',str)<>0)or(pos('--',str)<>0)do
          begin
            delete(str,pos('..',str),1);
            delete(str,pos(',,',str),1);
            delete(str,pos('!!',str),1);
            delete(str,pos('??',str),1);
            delete(str,pos('::',str),1);
            delete(str,pos('--',str),1);
          end;  
        writeln(file_2,str);
      end;
    close(file_1);
    close(file_2);
  end;
procedure type_3(name_in:string;name_out:string);
  var file_1,file_2:text;
      str:string;
      i:integer;
  begin
    assign(file_1,'input/'+name_in);
    reset(file_1);
    readln(file_1);
    assign(file_2,'output/'+name_out);
    rewrite(file_2);
    while eof(file_1)<>true do
      begin
        readln(file_1,str);
        for i:=1 to length(str)do
          begin
            write(file_2,str[i]);
            if str[i]in['!','.','?']then
              writeln(file_2);
          end;
      end;
    close(file_1);
    close(file_2);
  end;
var f_1,f_2:text;
    tip,name_in,name_out:string;
    count_type_1,count_type_2,count_type_3:integer;
begin
  assign(f_1,'input.txt');
  reset(f_1);
  while eof(f_1)<>true do
    begin
      readln(f_1,name_in);
      assign(f_2,'input/'+name_in);
      reset(f_2);
      readln(f_2,tip);
      if tip='1' then
        begin
          count_type_1:=count_type_1+1;
          name_out:=get_name(tip,count_type_1);
          type_1(name_in,name_out);
        end;
      if tip='2' then
        begin
          count_type_2:=count_type_2+1;
          name_out:=get_name(tip,count_type_2);
          type_2(name_in,name_out);
        end;
      if tip='3' then
        begin
          count_type_3:=count_type_3+1;
          name_out:=get_name(tip,count_type_3);
          type_3(name_in,name_out);
        end;
      close(f_2);
    end;
  close(f_1); 
end.