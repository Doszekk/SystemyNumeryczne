clc;
clear;

A=[1 5;
  2 0];
B=[1 2 5;
  4 3 6;
  2 -1 1];
  
Awyz=A(1,1)*A(2,2)-A(2,1)*A(1,2)

Bwyz=B(1,1)*B(2,2)*B(3,3)+B(1,2)*B(2,3)*B(3,1)+B(1,3)*B(2,1)*B(3,2)-B(1,3)*B(2,2)*B(3,1)-B(1,2)*B(2,1)*B(3,3)-B(1,1)*B(2,3)*B(3,2)
disp("")

Bwyz=0;
Mwyz=0;
for(i=1:rows(B))
M=B(:,2:3);
M(i,:)=[];
Mwyz=M(1,1)*M(2,2)-M(2,1)*M(1,2);
Bwyz=Bwyz+(-1)^(1+i)*B(i,1)*Mwyz;
endfor
Bwyz
disp("")

for(i=1:rows(B))
for(j=1:columns(B))
M=B;
M(:,j)=[];
M(i,:)=[];
Mwyz=M(1,1)*M(2,2)-M(2,1)*M(1,2);
Bdop(i,j)=(-1)^(i+j)*Mwyz;
endfor
endfor

Bdop
disp("")
inv(B)
Binv=1/Bwyz*Bdop'

D=randi(100,10,10)
inv(D)
odwroc(D)