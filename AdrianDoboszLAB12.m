clc;
clear;
disp("Zadanie 1");
f=@(x)1/4*x^2;
przedzieal = [0,4];

%Obliczenia dla 10 punktow
disp("dla 10 punktow");
ilepunktow = 10;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=fsum*skok

%Obliczenia dla 1000 punktow
disp("dla 1000 punktow");
ilepunktow = 1000;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=fsum*skok

%Obliczenia dla 100000 punktow
disp("dla 100000 punktow");
ilepunktow = 100000;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=fsum*skok


clear;
disp("Zadanie 2");
f=@(x)1/4*x^2;
przedzieal = [0,4];

%Obliczenia dla 10 punktow
disp("dla 10 punktow");
ilepunktow = 10;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=(fsum+(f(przedzieal(1))+f(przedzieal(2)))/2)*skok

%Obliczenia dla 1000 punktow
disp("dla 1000 punktow");
ilepunktow = 1000;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=(fsum+(f(przedzieal(1))+f(przedzieal(2)))/2)*skok

%Obliczenia dla 100000 punktow
disp("dla 100000 punktow");
ilepunktow = 100000;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
fsum=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
fsum+=f(i);
endfor;
pole=(fsum+(f(przedzieal(1))+f(przedzieal(2)))/2)*skok

%drugi wzór na metode trapezów
disp("korzystajac z drugiego wzoru na metode trapezow");

%Obliczenia dla 10 punktow
disp("dla 10 punktow");
ilepunktow = 10;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
pole=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
pole+=((f(i)+f(i+skok))/2)*skok;
endfor;
pole

%Obliczenia dla 1000 punktow
disp("dla 1000 punktow");
ilepunktow = 1000;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
pole=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
pole+=((f(i)+f(i+skok))/2)*skok;
endfor;
pole

%Obliczenia dla 100000 punktow
disp("dla 100000 punktow");
ilepunktow = 100000;
skok = (przedzieal(2)-przedzieal(1))/ilepunktow;
pole=0;
for i=przedzieal(1):skok:przedzieal(2)-skok
pole+=((f(i)+f(i+skok))/2)*skok;
endfor;
pole










