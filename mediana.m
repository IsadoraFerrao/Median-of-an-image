function [figura2] = mediana(figura1, x,y)
  arq_1=double(imread(figura1));
  arq_2=double(imread(figura1));
  
  m = size(arq_1,1);
  n = size(arq_1,2);

  figura2='lena_toda_restaurada.jpg';
  intermed_x=((x-1)/2);
  intermed_y=((y-1)/2);

  for i=1:(m-x) #percorrer imagem grande
    for j=1:(n-y)
      lena=[];
        for k=1:(x)  
          for l=1:(y)
              lena(k,l)=(arq_1(i+k-1, j+l-1));           
          end
        end
       R=median(reshape(lena',1, x*y));
       arq_2(i+intermed_x, j+intermed_y)=uint8(R);

    end 
  end
  imwrite(uint8(arq_2), figura2);
return