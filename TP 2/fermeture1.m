x = imread('peppers.png');        %aquérir une image

y = im2bw(x);                             % converte l'image en binaire
  
% diffinir la sturcture
SE = strel('square', 3);
% appliquer la fonction imdilate et imerode pour l’fermeteur.
IM1 = imdilate(y,SE);      IM2 = imerode(IM1,SE);   
 
%affichaages
subplot(1,2,1) , imshow(y);      title('image origine')
subplot(1,2,2) , imshow(IM2);  title('resultat  de fermeture')
