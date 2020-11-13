clear;
clc;
a=randi(10,1)
b=randi(10,1)
c=randi(10,1)
if(a+b>c && a+c>b && b+c>a)
disp("trojkant mozna utworzyc");
else
disp("trojkanta nie mozna utworzyc");
endif