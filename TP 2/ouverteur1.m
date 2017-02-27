x = imread('peppers.png');    %aquérir une image
   
y = im2bw(x);                        % converte l'image en binaire
  
SE = strel('square', 3);           % diffinir la sturcture
% appliquer la fonction imerode et imdilate pour l’ouverteur.
IM1 = imerode(y,SE);  IM2 = imdilate(IM1,SE);         
 
%affichaages
subplot(1,2,1) , imshow(y);       title('image origine')
subplot(1,2,2) , imshow(IM2);  title('resultat  de ouverture')
