clc;
clear;
f=@(x)-x^3+13*x^2-x-15;
disp("Zadanie 1");

x1=10;
x2=15;

for i=1:20
if(f(x1)*f(x2)>0)
disp("brak miesjsc zerowych");
break;
elseif;
xs=(x1+x2)/2;
disp("-----------------");
y=f(xs);
printf("Krok: %d\nxs = %f.20\nf(%f)=%f.10\n",i,xs,xs,y);
if(f(xs)*f(x2)>0)
x2=xs;
endif;
if(f(x1)*f(xs)>0)
x1=xs;
endif;
endif;
endfor;


##clc;
clear;
disp("Zadanie 2");

f=@(x)-x^3+13*x^2-x-15;
fx=[-1,13,-1,-15];
fjhgj=polyder(fx);
fpoch=@(x)-3*x^2+26*x-1;



x=15;
for i=1:10
disp("----------");
krok = i
x=x-f(x)/fpoch( x)
endfor


##clc;
clear;
disp("Zadanie 3");

f=@(x)-x^3+13*x^2-x-15;
fx=[-1,13,-1,-15];
fjhgj=polyder(fx);
fpoch=@(x)-3*x^2+26*x-1;

xk=10;
x=15;

for i=1:20
disp("----------");
krok=i
x=x-(f(x)*(xk-x))/(f(xk)-f(x))
endfor


##clc;
clear;
f=@(x)x^3+2*x^2-88*x-320
disp("Zadanie 4");

x1=-2;
x2=20;
i=1
err=inf;
while (err>0.001 || err<-0.001)
if(f(x1)*f(x2)>0)
disp("brak miesjsc zerowych");
break;
elseif;
xs=(x1+x2)/2;
disp("-----------------");
err=f(xs);
y=f(xs);
i++;
printf("Krok: %d\nxs = %f.20\nf(%f)=%f.10\nerr=%f.4\n",i,xs,xs,y,err);
if(f(xs)*f(x2)>0)
x2=xs;
endif;
if(f(x1)*f(xs)>0)
x1=xs;
endif;
endif;
endwhile;

##clc;
clear;
disp("Zadanie 5");

f=@(x) 3*x^6 - 4*x^5 + 2*x^4 + x^3 + 3*x - 5;
fx=[3,-4,2,1,0,3,-5];
fpochh=polyder(fx);

fpoch=@(x) 18*x^5 - 20*x^4 + 8*x^3 + 3*x^2 + 3;



x=15;
i=1
err=inf
while (err>0.1 || err<-0.1)
disp("----------");
Krok=i++
x=x-f(x)/fpoch( x)
err=f(x)
endwhile















