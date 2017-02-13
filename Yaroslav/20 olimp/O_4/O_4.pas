Program O_4;
var F:text; 
      count: array ['A'..'Z'] of integer; count2: array ['A'..'Z'] of integer;
      i,A,b:integer; stroka:string;
begin
      assign(F,'input.txt'); reset(F);
      readln(F,stroka);
     A:=length(stroka);
     for i:=1 to length(stroka) do
         begin
                count[stroka[i]]:=count[stroka[i]]+1;
         end;
       readln(F);
       while eof(F)=false do
         begin
                readln(F,stroka);
                if length(stroka)<>A then continue
                else
                   begin
                         for i:=1 to length(stroka) do
                            begin
                                   if count[stroka[i]]=0 then 
                                     begin
                                       b:=1;
                                       break;
                                     end
                                   else count2[stroka[i]]:=count2[stroka[i]]+1;
                            end;
                          if (i=length(stroka)) and (b<>1) then 
                            for i:=1 to length(stroka) do
                                   begin
                                      if count2[stroka[i]]<>count[stroka[i]] then 
                                             begin
                                                b:=1;
                                                break;
                                             end;
                                   end;
                         if b<>1 then
                            begin
                                   close(F);
                                   assign(F,'output.txt');
                                   rewrite(F);
                                   writeln(F,stroka);
                                   close(F);
                                   exit;
                            end;
                          b:=0;
                   end;
         end;
    close(F);
   assign(F,'output.txt');
   rewrite(F);
   writeln(F,'NO');
   close(F); 
end.