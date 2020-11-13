clear;
help sqrt;
help nthroot;
clc;
a=sqrt(32^(3/5)+0.0625*8+1/2);
a
b=sqrt(32^(3/5)+sin(pi/2))
clear;
a=9
b=12
c=sqrt(a^2+b^2)
Pt=((a+b)/2)*(a+b)/7
Pk= pi*((a+b)/2)^2
clear;
A=[1 2 3;
   4 5 0]
B=[1 4;
   0 3;
   2 2]
C=A*B
D=B*A
D=D*2
E=zeros(3,4)
D=E(:,1:3)
F=A'.*B
u=[0 pi/2 pi pi*3/2 2*pi]
v=[cos(u(1)) cos(u(2)) cos(u(3)) cos(u(4)) cos(u(5))]
plot(u,v)
x=[0:0.2:2*pi]
xsize=size(x)
y=sin(x(1:xsize(2)))
plot(x,y)
BIG=y'*y
surf(BIG)
clear;
x=[-1:0.1:1]
xsize=size(x)
y1=x(1:xsize(2)); 
y2=x(1:xsize(2)).^(3/2); 
y3=x(1:xsize(2)).^2; 
y4=x(1:xsize(2)).^3
plot(y1,x,y2,x,y3,x,y4,x)
clear;









