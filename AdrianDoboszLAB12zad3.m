clc;
clear;
disp("Zadanie 3");
f=@(x)1/4*x^2;
przedzieal = [0,4];


%Obliczenia dla 100000 punktow
disp("dla 100000 punktow");
ilepunkt=100000;
skok = (przedzieal(2)-przedzieal(1))/ilepunkt;
poleelementar=(przedzieal(2)-przedzieal(1))*(f(przedzieal(2))-f(przedzieal(1)))/ilepunkt;
xx=randi([przedzieal(1),przedzieal(2)*ilepunkt],1,ilepunkt)./ilepunkt;
yy=randi([przedzieal(1),przedzieal(2)*ilepunkt],1,ilepunkt)./ilepunkt;
t1=time();
pole=0;
for i=1:ilepunkt
if(f(xx(i))>yy(i))
pole+=poleelementar;
endif
endfor;
t2=time();
pole
sekundy=gmtime(t2-t1).sec;
milisek=gmtime(t2-t1).usec;
printf("czas obliczen %d:%ds\n",sekundy,milisek);


%Obliczenia dla 10000000 punktow
%disp("dla 10000000 punktow");
%ilepunkt=10000000;
%skok = (przedzieal(2)-przedzieal(1))/ilepunkt;
%poleelementar=(przedzieal(2)-przedzieal(1))*(f(przedzieal(2))-f(przedzieal(1)))/ilepunkt;
%xx=randi([przedzieal(1),przedzieal(2)*ilepunkt],1,ilepunkt)./ilepunkt;
%yy=randi([przedzieal(1),przedzieal(2)*ilepunkt],1,ilepunkt)./ilepunkt;
%t1=time();
%pole=0;
%for i=1:ilepunkt
%if(f(xx(i))>yy(i))
%pole+=poleelementar;
%endif
%endfor;
%t2=time();
%pole
%gmtime(t2-t1).sec
%gmtime(t2-t1).usec


%Obliczenia dla 10000000000 punktow
%disp("dla 10000000000 punktow");
%ilepunkt=10000000000;
%skok = (przedzieal(2)-przedzieal(1))/ilepunkt;
%poleelementar=(przedzieal(2)-przedzieal(1))*(f(przedzieal(2))-f(przedzieal(1)))/ilepunkt;
%xx=randi([przedzieal(1),przedzieal(2)*ilepunkt],1,ilepunkt)./ilepunkt;
%yy=randi([przedzieal(1),przedzieal(2)*ilepunkt],1,ilepunkt)./ilepunkt;
%t1=time();
%pole=0;
%for i=1:ilepunkt
%if(f(xx(i))>yy(i))
%pole+=poleelementar;
%endif
%endfor;
%t2=time();
%pole
%gmtime(t2-t1).sec


