clear;
clc;
for i=1:200
  printf("%.0f Bede sie pilnie uczyl\n",i);
endfor
clear;

for i=1:10
  for j=1:10
    a=i*j;
    printf("%d  ",a);
  endfor
  printf("\n");
endfor
clear;

for i=1:10
  for j=1:10
    A(i,j)=i*j;
  endfor
endfor
disp(A)
clear;

a=1;
  for i=1:100
    if(isprime(i)==1)
    p(a)=i;
    a++;
    endif
  endfor
disp(p)
a=1;
  while(i<100)
    if(isprime(i)==1)
    p(a)=i;
    a++;
  endif
  i++;
  endwhile
disp(p)
primes(100)