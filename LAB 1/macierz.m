clear;
clc;
A=[ 
  1 8 -3;
  8 1 0;
  9 0 8];
  
for i=1:3
  for j=1:3
    B(i,j)=A(i,j)+3;
  endfor
endfor
disp(A)
disp(B)

  C=A;
for i=1:3
  C(i,i)=C(i,i)*C(i,i);
endfor
disp(A)
disp(C)

  D=B+C;
for i=1:3
  C(i,i)=C(i,i)*C(i,i);
endfor
disp(B)
disp(D)


