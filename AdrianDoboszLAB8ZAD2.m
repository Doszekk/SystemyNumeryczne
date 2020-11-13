clc;
clear;
disp("Zadanie 2")
px=[1 2 3 4];
py=[2 -4 8 12];
dY=zeros(1,columns(px));

for i=1:columns(px)
for j=0:i-1
dY(i)=(-1)^j*nchoosek(i-1,j)*py(i-j)+dY(i);
endfor
endfor
dY

