clc;
clear;
disp("Zadanie 1");
px=[1 3 4]
py=[6 0 2]
plot(px,py,".r","markersize",12)
Y=py'
A=[0 0 0]
X=[1;1;1]
for(i=1:columns(px)-1)
X(:,i+1)=[px(1)^i
        px(2)^i
        px(3)^i]
endfor
A=inv(X)*Y
xx=0:0.1:5;
yy=A(1)+A(2)*xx+A(3)*xx.^2;
hold on;
plot(xx,yy,"-k");
hold off


clear;
disp("Zadanie 2")
p1=[1 6]
p2=[3 0]
p3=[4 2]
px=[1 3 4]
py=[6 0 2]
A=polyfit(px,py,2)
xx=0:0.1:5;
yy=polyval(A,xx)
plot(px,py,".r","markersize",12)
hold on
plot(xx,yy,"-k");
hold off


clear;
disp("Zadanie 3")
px=[1 2 3 4 5 7]
py=[4 0 9 3 7 7]
A=polyfit(px,py,6)
xx=0:0.1:8;
yy=polyval(A,xx)
plot(px,py,".r","markersize",12)
hold on
plot(xx,yy,"-k");
hold off


clear;
disp("Zadanie 4");
p1=[1 4]
p2=[2 0]
p3=[3 9]
p4=[4 3]
px=[p1(1) p2(1) p3(1) p4(1)]
py=[p1(2) p2(2) p3(2) p4(2)]
Y=py'

fi0=@(x)(x-px(2)).*(x-px(3)).*(x-px(4))
fi1=@(x)(x-px(1)).*(x-px(3)).*(x-px(4))
fi2=@(x)(x-px(1)).*(x-px(2)).*(x-px(4))
fi3=@(x)(x-px(1)).*(x-px(2)).*(x-px(3))

A(1)=Y(1)/fi0(px(1))
A(2)=Y(2)/fi1(px(2))
A(3)=Y(3)/fi2(px(3))
A(4)=Y(4)/fi3(px(4))
xx=0:0.1:5
yyans=@(x)A(1).*fi0(x)+A(2).*fi1(x)+A(3).*fi2(x)+A(4).*fi3(x)
yy=yyans(xx)
plot(px,py,".r","markersize",12)
hold on
plot(xx,yy,"-k");
hold off


clear;
disp("Zadanie 5")
px = [ 0,1,2, 3,4, 5,7, 8,9,10];
py = [ 2,-4,8,-3,8,12,2,-4,0,15];
A=polyfit(px,py,columns(px))
xx=min(px)-0.1:0.1:max(px)+0.1;
yy=polyval(A,xx)
plot(px,py,".r","markersize",12)
hold on
plot(xx,yy,"-k");
hold off


disp("Zadanie 6");
px = [ 0,1,2, 3,4, 5,7, 8,9,10];
py = [-4,1,8,-3,8,12,2,-4,0,15];
Y=py'
fi=1
for i=1:columns(px)
fi=@(x,z)(x-px(i+1-binary(z,i)))
endfor

for i=1:columns(px)
A(i)=Y(i)/fi(px(i),i)
endfor
xx=0:0.1:5
yyans=@(x)A(1).*fi0(x)+A(2).*fi1(x)+A(3).*fi2(x)+A(4).*fi3(x)
yy=yyans(xx)
plot(px,py,".r","markersize",12)
hold on
plot(xx,yy,"-k");
hold off



