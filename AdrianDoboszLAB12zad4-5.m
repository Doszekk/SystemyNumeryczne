clc;
clear;
disp("Zadanie 4");
f=@(x)(-x^2+4*x)^(1/2);
przedzieal = [0,2];

polekola=pi()*2^2/4;

printf("\npole 1/4 kola %f\npole 1/2 kola %f\n\n",polekola,polekola*2);

disp("Dla przedzialu od 0 do 2");
%metoda trapezow
disp("metoda trapezow");
ilepunktow = 100;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=(fsum+(f(przedzieal(1))+f(przedzieal(2)))/2)*skok

%metoda prostokatow
disp("metoda prostokatow");
ilepunktow = 100;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=fsum*skok


przedzieal = [0,4];
disp("\n\nDla przedzialu od 0 do 4");
%metoda trapezow
disp("metoda trapezow");
ilepunktow = 100;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=(fsum+(f(przedzieal(1))+f(przedzieal(2)))/2)*skok

%metoda prostokatow
disp("metoda prostokatow");
ilepunktow = 100;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=fsum*skok



disp("Zadanie 5\n\n");
f=@(x)(-x^2+4*x)^(1/2);
przedzieal = [0,4];

skok = 0.4096;
fsum=0;
while(skok>=0.0001)
pole=0;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=fsum*skok;
printf("Pole polowy kola: %f\n           calka: %f, h: %f\n\n",polekola*2,pole,skok);
skok=skok/2;
endwhile



