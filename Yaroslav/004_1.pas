Program n_004_1;
var a,b,c,d,f:string;
    i,j,max,l,k,g,o:integer;
begin
	readln(a);
	for i:=1 to length(a) do
		begin
		  if (a[i]>='0') and (a[i]<='9') then
			  begin	
				  k:=k+1;
				  b:=b+a[i];
			  end;
		end;
		d:=b;
		f:=b;

		if k=0 then
			write(-1)
	  else
	    begin
	      for i:=1 to length(b) do
	        begin
	          d:=f;
	          l:=0;
	          for j:=1 to length(d) do
              begin
                if (b[i]=d[j]) then
                  begin
                    l:=l+1;
                      if (l>1) then
                        begin
                          delete(f,j,1);
                          l:=1;
                        end;
                  end; 
              end;
	        end;
	    end;
      writeln(f);
      g:=length(f);
      while g<>0 do
        begin
          for i:= 1 to length(f) do
            begin
              if ((ord(f[i]))> max) then
                begin
                max:=ord(f[i]);
                j:=i;
                end;
            end;
          c:=c+f[j];
          delete(f,j,1);
          g:=g-1;
          max:=0;
        end;
  write(c);
end.