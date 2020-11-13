clc;
clear;
disp("Zadanie 0");
A=[
 2 -1 5;
 4 -1 3;
 -4 1 -4];
B=[
6;
4;
-3];
X=inv(A)*B
disp("Zadanie 1");
if(det(A)!=0)
for(i=1:columns(A))
A1=A;
A1(:,i)=B;
X(i)=det(A1)/det(A);
endfor;
X
else
disp("Wyznacnik macie¿y równa sie 0")
endif;
A=randi(10,3,3);
B=randi(10,3,1);
if(det(A)!=0)
for(i=1:columns(A))
A1=A;
A1(:,i)=B;
X(i)=det(A1)/det(A);
endfor;
X
X=inv(A)*B
else
disp("Wyznacnik macie¿y równa sie 0")
endif;
disp("Zadanie 2")
A=randi(10,6,6);
B=randi(10,6,1);
if(det(A)!=0)
for(i=1:columns(A))
A1=A;
A1(:,i)=B;
X(i)=det(A1)/det(A);
endfor;
X
X=inv(A)*B
else
disp("Wyznacnik macie¿y równa sie 0")
endif;

clear;
disp("Zadanie 3")
A=randi(10,3,3);
B=randi(10,3,1);
X=ones(columns(A),1);
if(det(A)!=0)
  AB=A;
  AB(:,columns(A)+1)=B
  for(i=1:columns(A))
    j=0;
    if(AB(i,i+j)==0)
      j++;
      elseif(j>columns(A))
      prinf("W %d-tym wierszu s¹ same zera",i);
      elseif(AB(i,i+j)!=0)
      ABter=AB(:,j+i);
      AB(:,j+i)=AB(:,i);
      AB(:,i)=ABter;
    endif;
    for(j=i+1:rows(AB))
      n=AB(j,i)/AB(i,i)*(-1)
      AB(j,:)=AB(i,:)*n+AB(j,:)
    endfor;
  endfor;
  
  %% wyznaczanie niewiadomych Xi
  for(i=rows(AB):-1:1)
  Az=0;
  for(j=rows(AB):-1:1)
  
  
  Az+=AB(i,j)*X(j,1)
  
  
endfor;
  Az=Az-AB(i,columns(AB))-AB(i,i)
  X(i,1)=Az/AB(i,i)*-1;
  
  endfor
  X
  X=inv(A)*B
  else
  disp("Wyznacnik macie¿y równa sie 0")
endif;

disp("Zadanie 4")
A=[1 1 -1 2
0 2 -2 1
2 0 -1 1
1 1 -3 2]

B=[
6
-1
6
4 ]
X=ones(columns(A),1);
if(det(A)!=0)
  AB=A;
  AB(:,columns(A)+1)=B
  for(i=1:columns(A))
    j=0;
    if(AB(i,i+j)==0)
      j++;
      elseif(j>columns(A))
      prinf("W %d-tym wierszu s¹ same zera",i);
      elseif(AB(i,i+j)!=0)
      ABter=AB(:,j+i);
      AB(:,j+i)=AB(:,i);
      AB(:,i)=ABter;
    endif;
    for(j=i+1:rows(AB))
      n=AB(j,i)/AB(i,i)*(-1)
      AB(j,:)=AB(i,:)*n+AB(j,:)
    endfor;
  endfor;
  
  %% wyznaczanie niewiadomych Xi
  for(i=rows(AB):-1:1)
  Az=0;
  for(j=rows(AB):-1:1)
  
  
  Az+=AB(i,j)*X(j,1)
  
  
endfor;
  Az=Az-AB(i,columns(AB))-AB(i,i)
  X(i,1)=Az/AB(i,i)*-1;
  
  endfor
  X
  X=inv(A)*B
  else
  disp("Wyznacnik macie¿y równa sie 0")
endif;



