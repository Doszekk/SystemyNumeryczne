function [X, err, Krok] =  rozwiazIteracyjnie(A,B,Acc)
X=zeros(rows(A),1);
for(i=1:rows(A))
D(i,i)=A(i,i);
endfor
D;
R=A-D;
W=-inv(D)*R;
Z=inv(D)*B;

a=zeros(rows(W));
for(j=1:rows(W))
for(i=1:columns(W))
a(i,j)=a(i,j)+abs(W(j,i));
endfor
endfor
aabb=0;
for(j=1:rows(W))
for(i=1:columns(W))
aabb+=W(j,i)^2;
endfor
endfor

amax=0;
for(j=1:rows(a))
for(i=1:rows(a))
if(amax<a(i,j))
amax=a(i,j);
endif
endfor
endfor

if(amax<=1 && aabb<=1)
  Xdok=inv(A)*B;
  xdok=Xdok(1)+Xdok(2)+Xdok(3);
  x=0;
  i=1;
  while(xdok-x>Acc || xdok-x<-Acc)
  i++;
  X=W*X+Z;
  x=X(1)+X(2)+X(3);
endwhile;
Krok=i;
err=X-Xdok;
else
  disp("Nie da sie policzyc");
  X=0;
  err=0;
  Krok=0;
endif
endfunction