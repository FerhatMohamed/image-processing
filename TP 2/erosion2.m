x = imread('peppers.png');           %aquérir une image
     
y = im2bw(x);                               % converte l'image en binaire
     
SE = strel('square', 5);                  % diffinir la sturcture

IM2 = imerode(y,SE);                   % appliquer la fonction imerode (erosion)

%affichaages
subplot(1,2,1) , imshow(y);       title('image origine')
subplot(1,2,2) , imshow(IM2);  title('resultat  de erosion') 
