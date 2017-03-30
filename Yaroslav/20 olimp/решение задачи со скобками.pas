Program n_001_recurse;
var stroka,ch,stroka_piece: string;

function count(l_stroka: string): string;
var l_j,l_i,err,l_ch1,l_ch2,l_len,l_k,s,l_n: integer; l_stroka_cut: string;
  begin
    l_stroka:=l_stroka+'+';
    l_j:=1; l_i:=1; l_n:=1;
    while l_i-1<>length(l_stroka) do
      begin
        l_len:=length(l_stroka);
        if (l_stroka[l_i]='*')or(l_stroka[l_i]='/') then
          begin
            if l_n<>0 then
              begin
                if l_stroka[l_i]='*' then l_k:=2;
                if l_stroka[l_i]='/' then l_k:=3;
                l_i:=l_i+1;
                l_n:=0;
                continue;
              end
            else
              begin
                l_stroka_cut:=copy(l_stroka,l_i+1,length(l_stroka)-l_i+1);
                delete(l_stroka,l_i+1,length(l_stroka)-l_i+1);
              end;
          end;
        if (l_stroka[l_i]='+')or(l_stroka[l_i]='-')or((l_stroka[l_i]='*')and(l_n=0))or((l_stroka[l_i]='/')and(l_n=0)) then
          begin
            if l_k<>0 then
              begin
                if l_k=2 then
                  begin
                    val(copy(l_stroka,l_j,pos('*',l_stroka)-l_j),l_ch1,err);
                    val(copy(l_stroka,pos('*',l_stroka)+1,l_i-1-pos('*',l_stroka)),l_ch2,err);
                    insert(inttostr(l_ch1*l_ch2),l_stroka,l_i);
                    delete(l_stroka,l_j,l_i-l_j);
                  end;
                if l_k=3 then
                  begin
                    val(copy(l_stroka,l_j,pos('/',l_stroka)-l_j),l_ch1,err);
                    val(copy(l_stroka,pos('/',l_stroka)+1,l_i-1-pos('/',l_stroka)),l_ch2,err);
                    insert(inttostr(l_ch1 div l_ch2),l_stroka,l_i);
                    delete(l_stroka,l_j,l_i-l_j);
                  end;
                l_i:=abs(l_i-abs(length(l_stroka)-l_len));
                l_stroka:=l_stroka+l_stroka_cut;
                l_stroka_cut:='';
                l_k:=0;
              end;
            if (l_stroka[l_i]='+')or(l_stroka[l_i]='-') then
              begin
                l_n:=l_n+1;
                l_j:=l_i+1;
                l_i:=l_i+1;
                continue;
              end;
            if l_n=0 then
              begin
                l_j:=l_j-abs(length(l_stroka)-l_len)+1;
                l_i:=l_j;
                l_n:=l_n+1;
              end
            else l_j:=l_i+1-abs(length(l_stroka)-l_len);
            l_i:=l_i+1;
            continue;
          end;
        l_i:=l_i+1-abs(length(l_stroka)-l_len);
      end;
  
  l_k:=1; l_j:=1;
  for l_i:=2 to length(l_stroka) do
    begin
      if (l_stroka[l_i]='+')or(l_stroka[l_i]='-') then 
        begin
          val(copy(l_stroka,l_j,l_i-l_j),l_ch1,err);
          l_j:=l_i+1;
          
          case l_k of
            0: s:=s-l_ch1;
            1: s:=s+l_ch1;
          end;
          
          case l_stroka[l_i] of
            '-': l_k:=0;
            '+': l_k:=1;
          end;  
        end;   
    end;
    result:=inttostr(s);
  end;

procedure math_brackets(l_stroka:string);
  var l_i,l_k1,l_k2,l_pos : integer;
  begin
    for l_i:=1 to length(l_stroka) do
      begin
        if l_stroka[l_i]='(' then 
          begin
            l_k1:=l_k1+1;
            if l_k1=1 then l_pos:=l_i+1;
            continue;
          end;
        if l_stroka[l_i]=')' then 
          begin
            l_k2:=l_k2+1;
          end;
        if (l_k1<>0)and(l_k1=l_k2) then 
          begin
            math_brackets(copy(l_stroka,l_pos,l_i-l_pos));
            break;
          end;
      end;
    if l_k1=0 then 
      begin
        ch:=count(l_stroka);
        stroka_piece:=l_stroka;
      end
    else
      begin
        for l_i:=1 to length(l_stroka) do
          if copy(l_stroka,l_i,length(stroka_piece))=stroka_piece then
            begin
              insert(ch,l_stroka,l_i-1);
              delete(l_stroka,pos('(',l_stroka),pos(')',l_stroka)-pos('(',l_stroka)+1);
              math_brackets(l_stroka);
              break;
            end;
      end;
  end;
begin
  readln(stroka);
  math_brackets(stroka);
  writeln(count(stroka_piece));
end.