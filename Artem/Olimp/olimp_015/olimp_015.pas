program zadacha_015;
var str_in,str_out:string;
    f_in,f_out:text;
    w,w_prom,b,i:integer;
begin
  assign(f_in,'input.txt');
  reset(f_in);
  assign(f_out,'output.txt');
  rewrite(f_out);
  readln(f_in,w,b);
  w_prom:=w;
  while eof(f_in)<>true do
    begin
      str_in:='1';
      while (length(str_in)<>0)do
        begin
          readln(f_in,str_in);
          str_out:=str_out+' '+str_in;
        end;
      for i:=1 to b-1 do
        str_out:=' '+str_out;
      while length(str_out)<>0 do
        begin
          w_prom:=w;
          while length(str_out)<w do
            str_out:=str_out+' ';
          if (str_out[w]=' ')or(length(str_out)<w)then 
            begin  
              writeln(f_out,copy(str_out,1,w_prom));
              delete(str_out,1,w_prom);
              continue;
            end
          else
            begin
              while str_out[w_prom]<>' ' do
                w_prom:=w_prom-1;
              writeln(f_out,copy(str_out,1,w_prom));
              delete(str_out,1,w_prom);
              continue;
            end;
        end;
    end;
  close(f_in);
  close(f_out);
end.