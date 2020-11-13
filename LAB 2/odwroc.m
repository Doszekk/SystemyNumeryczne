function [wynik] = odwroc(in1)
if(rows(in1)!=columns(in1) || det(in1)==0)
print("Z danej mociezy nie da siê wyznaczyæ maniezy odwrotnej")
wynik=[];
else
for(i=1:rows(in1))
for(j=1:columns(in1))
M=in1;
M(:,j)=[];
M(i,:)=[];
in1dop(i,j)=(-1)^(i+j)*det(M);
endfor
endfor
in1inv=1/det(in1)*in1dop'
wynik=in1inv;
endif
endfunction