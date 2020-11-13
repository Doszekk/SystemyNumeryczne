clc;
clear;
disp("Zadanie 1");
A=[
11 15
-5 -9]
[w,m]=eig(A)
A*w(:,1)
m(1,1)*w(:,1)
A*w(:,2)
m(2,2)*w(:,2)

 
disp("Zadanie 2");
B=[
21 -9
5 3 ]
[w,m]=eig(B)
cw1=B*w(:,1)
m(1,1)*w(:,1)
cw2=B*w(:,2)
m(2,2)*w(:,2)
hold on;
plot([w(1,1),0],[w(2,1),0],"->r")
plot([w(1,2),0],[w(2,2),0],"->r")
plot([cw1(1),0],[cw1(2),0],"->b")
plot([cw2(1),0],[cw2(2),0],"->b")
hold off;
 

disp("Zadanie 3")
C=[
1 -3 4
4 -7 8
6 -7 7];
c(1)=-1;
c(2)=0;
for i=1:rows(C)
c(2)+=C(i,i);
endfor
c(3)=0;
for i=1:rows(C)
Cc=C;
Cc(i,:)=[];
Cc(:,i)=[];
c(3)+=det(Cc);
endfor
c(3)*=-1;
c(4)=det(C);
c=c*-1
poly(C)
Lambda=roots(c)
roots(poly(C))
[w,m]=eig(C)

 
disp("Zadanie 4")
A
x=[
0
1];
 

for i=1:27
printf("krok %d\n",i)

v=A*x;
m=max(abs(v));
if m==0
break
endif
x=v/m
endfor

 
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
x = v(:,1);
x = x/sum(x) 
xsum=0;
for(i=1:rows(x))
xsum+=x(i);
endfor
xsum



















