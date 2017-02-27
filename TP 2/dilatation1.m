x = imread('peppers.png');       %aquérir une image
    
y = im2bw(x);                           % converte l'image en binaire
   
SE = strel('square', 3);              % diffinir la sturcture
   
IM2 = imdilate(y,SE);               % appliquer la fonction imdilate (dilatation )

%affichaages
subplot(1,2,1) , imshow(y);       title('image origine')
subplot(1,2,2) , imshow(IM2);  title('resultat  de dilatation')
