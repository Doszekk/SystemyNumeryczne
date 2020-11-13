function [reval] = mnozenie(input1,input2)
if(columns(input1)!=rows(input2))
printf("Danych macierzy nie da sie wymnozyc.");
reval = 0;
else
  output1=zeros(rows(input1),columns(input2));
  for(ro=1:rows(input1))
  for(co=1:columns(input2))
  for(rci=1:columns(input1))
  output1(ro,co)+=input1(ro,rci)*input2(rci,co);
  endfor
  endfor 
  endfor
reval=output1;
endif
endfunction
