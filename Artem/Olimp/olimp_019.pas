
Program zadacha_019;

Function prost(ch_1,ch_2:integer):integer;
  begin  
    while ch_1<>ch_2 do
      if ch_1> ch_2 then ch_1:=ch_1-ch_2
      else ch_2:=ch_2-ch_1;
    if ch_1=1 then result:=1;
  end;
  
Function n_19(l_n,proizv,lvl,pred,otvet:integer):integer;
  var proverka,l_i:integer;
  begin
    if lvl=1 then 
      begin 
        otvet:=otvet+1;
        result:=otvet;
      end;
            for l_i:=pred+1 to l_n do
              if (l_n mod l_i=0)and(prost(pred,l_i)=1)and(proizv*l_i<=l_n)and(lvl<>1)then 
                begin
                  write(pred,' ',l_i,'[',lvl,'] ');
                  n_19(l_n,proizv*l_i,lvl-1,l_i,otvet);
                end;
    writeln(otvet);         
    
   
  end;
  
var n,k,i,gl_otvet:integer;

begin
  readln(n,k);
  for i:=1 to n do
    if n mod i=0 then gl_otvet:=gl_otvet+n_19(n,i,k,i,0);
  writeln('------',gl_otvet,'------');
  
end.