clc
clear
disp("Zadanie 6")
A=[
0 0 1/3 0   0  1/3
0 0 1/3 1/2 0  0
0 1 0   0   0  1/3
1 0 0   0   1  1/3
0 0 0   1/2 0  0
0 0 1/3 0   0  0]
pol = poly(A)
[v,m]=eig(A)
x = v(:,1)
x = x/sum(x) 
xsum=0;
for(i=1:rows(x))
xsum+=x(i);
endfor
xsum