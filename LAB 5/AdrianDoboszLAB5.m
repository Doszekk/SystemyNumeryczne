clc;
clear;
disp("Zadanie 1")
A=[5 -1 3
-2 5 2
1 1 10];
b=[1
1
-8];
X=zeros(3,1);
for(i=1:rows(A))
D(i,i)=A(i,i);
endfor
D
R=A-D
W=-inv(D)*R
Z=inv(D)*b


for(i=1:10)
printf("Krok %d\n",i)
X=W*X+Z
endfor;

Xdok=inv(A)*b


clc;
disp("Zadanie 2")
Xdok=inv(A)*b;
X=zeros(3,1);
Acc=0.0001
xdok=Xdok(1)+Xdok(2)+Xdok(3);
x=0
i=1;
while(xdok-x>Acc && xdok-x>-Acc)
printf("Krok %d\n",i++)
X=W*X+Z
x=X(1)+X(2)+X(3);
endwhile;

clc;
clear;
disp("Zadanie 3")

A=[
6 2 1 -2
4 9 1 1
-3 2 7 2
2 1 2 -8];
B=[
-7
8
1
4 ];
X=zeros(rows(A),1);
for(i=1:rows(A))
D(i,i)=A(i,i);
endfor
D
R=A-D
W=-inv(D)*R
Z=inv(D)*B

a=zeros(rows(W));
for(j=1:rows(W))
for(i=1:columns(W))
a(i,j)=a(i,j)+abs(W(j,i));
endfor
endfor
aabb=0;
for(j=1:rows(W))
for(i=1:columns(W))
aabb+=W(j,i)^2;
endfor
endfor

a
aabb
amax=0;

for(j=1:rows(a))
for(i=1:rows(a))
if(amax<a(i,j))
amax=a(i,j);
endif
endfor
endfor

if(amax<=1 && aabb<=1)
  disp("Wyniki sa zbiezne")
  Xdok=inv(A)*B;
  Acc=0.00001
  xdok=Xdok(1)+Xdok(2)+Xdok(3)
  x=0;
  i=1;
  while(xdok-x>Acc || xdok-x<-Acc)
  printf("Krok %d\n",i++)
  X=W*X+Z
  x=X(1)+X(2)+X(3);
  endwhile;
else
  disp("Nie da sie policzyć")
endif
Xdok

clc;
disp("Zadanie 4")
A=[6 2 1 -2;
 4 9 1 1;
 -3 2 7 2;
 2 1 2 -8];
b=[
-7;
 8; 
 1; 
 4];
 
X, err = rozwiazIteracyjnie(A, b, 0.00005);
printf('X = \n');
printf(' % 3.8f\n', X);
printf('Blad: %3.8f\n', err);
X2 = inv(A)*b;
printf('X2 = \n');
printf(' % 3.8f\n', X2);

 disp("Zadanie 5")

A=[
6 2 1 -2
4 9 1 1
-3 2 7 2
2 1 2 -8];
B=[
-7
8
1
4 ];
[X,err,Krok] = rozwiazIteracyjnie(A, b, 0.00001)
























