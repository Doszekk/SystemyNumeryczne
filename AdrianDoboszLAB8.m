clc;
clear;
disp("Zadanie 1")
px=[1 2 3 4]
py=[2 -4 8 12]

dY=ones(columns(px),columns(px));
dY=dY*inf;
dY(:,1)=py';
for i=2:columns(px)
for j=1:columns(px)-i+1
dY(j,i)=dY(j+1,i-1)-dY(j,i-1);
endfor
endfor
dY



clear;
disp("Zadanie 2")
px=[1 2 3 4];
py=[2 -4 8 12];
dY=zeros(1,columns(px));

for i=1:columns(px)
for j=0:i-1
    dY(i)=(-1)^j*nchoosek(i-1,j)*py(i-j)+dY(i)
endfor
endfor
dY




clear;
disp("Zadanie 3")
px =    [1 2 3 4 5 6 7 8 9 10 11 12 13 14]
py =    [2 -4 8 12 9 21 25 18 18 31 29 12 9 -2] 
dY=ones(columns(px),columns(px));
dY=dY*inf;
dY(:,1)=py';
for i=2:columns(px)
for j=1:columns(px)-i+1
dY(j,i)=dY(j+1,i-1)-dY(j,i-1);
endfor
endfor
dY




clear;
disp("Zadanie 4")
px=[1 2 3 4]
py=[2 -4 8 12]
dY=ones(columns(px),columns(px));
dY=dY*inf;
dY(:,1)=py';
for i=2:columns(px)
for j=1:columns(px)-i+1
dY(j,i)=dY(j+1,i-1)-dY(j,i-1);
endfor
endfor
dY
h=1
q=@(x)x-px(1)
W=@(x)dY(1,1)+dY(1,2).*q(x)+dY(1,3).*q(x).*(q(x)-1)/factorial(2)+dY(1,4).*q(x).*(q(x)-1).*(q(x)-2)/factorial(3)
xx=min(px)-0.1:0.1:max(px)+0.1;
yy=W(xx);
plot(px,py,".r","markersize",12)
hold on;
plot(xx,yy,"-k");
hold off



%nie dzia³a niezale¿nie od podejœcia nie wiem dlaczego rozwi¹zanie reczne i automatyczne daj¹ to samo rozwi¹zanie
clear;
disp("Zadanie 5")
px = [-6 -4 -2 0 2 4 6 8]
py = [3 -5 7 -15 9 -21 21 -18]
px = [-6 -4 -2 0 2 4 6 8]
py = [3 -5 7 -15 9 -21 21 -18]
dY=ones(columns(px),columns(px));
dY=dY*inf;
dY(:,1)=py';
for i=2:columns(px)
for j=1:columns(px)-i+1
dY(j,i)=dY(j+1,i-1)-dY(j,i-1);
endfor
endfor
dY

q=@(x)x-px(1)/2
##p{1}=@(x)q(x);   
##for j=2:columns(px)
##p{j} =@(x)(q(x)-j+1).*p{j-1}(x);   
##endfor   
##
##W{1}=@(x)dY(1,1)
##for i=2:columns(px)
##W{i}=@(x)dY(1,i).*p{i-1}(x)/factorial(i-1)+W{i-1}(x); 
##endfor
##xx=min(px)-0.1:0.1:max(px)+0.1;
##yy=W{columns(px)}(xx)


W=@(x)dY(1,1)+dY(1,2).*q(x)+dY(1,3).*q(x).*(q(x)-1)/factorial(2)+dY(1,4).*q(x).*(q(x)-1).*(q(x)-2)/factorial(3) +dY(1,5).*q(x).*(q(x)-1).*(q(x)-2).*(q(x)-3)/factorial(4)+dY(1,6).*q(x).*(q(x)-1).*(q(x)-2).*(q(x)-3).*(q(x)-4)/factorial(5) +dY(1,7).*q(x).*(q(x)-1).*(q(x)-2).*(q(x)-3).*(q(x)-4).*(q(x)-5)/factorial(6)
xx=min(px)-0.1:0.1:max(px)+0.1;
yy=W(xx)

plot(px,py,".r","markersize",12)
hold on;
plot(xx,yy,"-k");
hold off





clear;
disp("Zadanie 6")
px = [0 1 2 3 4 5 6 7 8 9 10]
py = [-4 -92 -4 8 -12 9 -21 25 -18 -125 -99]

dY=ones(columns(px),columns(px));
dY=dY*inf;
dY(:,1)=py';
for i=2:columns(px)
for j=1:columns(px)-i+1
dY(j,i)=dY(j+1,i-1)-dY(j,i-1);
endfor
endfor
dY

q=@(x)x-px(1)
p{1}=@(x)q(x);   
for j=2:columns(px)
p{j} =@(x)(q(x)-j+1).*p{j-1}(x);   
endfor   

W{1}=@(x)dY(1,1)
for i=2:columns(px)
W{i}=@(x)dY(1,i).*p{i-1}(x)/factorial(i-1)+W{i-1}(x); 
endfor
xx=min(px)-0.1:0.1:max(px)+0.1;
yy=W{columns(px)}(xx)

plot(px,py,".r","markersize",12)
hold on;
plot(xx,yy,"-k");
hold off














