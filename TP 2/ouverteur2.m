x = imread('peppers.png');    %aquérir une image
     
y = im2bw(x);                        % converte l'image en binaire
     
SE = strel('square', 3);           % diffinir la sturcture carré de tialle 3 
SE1 = strel('square', 5);           % diffinir la sturcture carré de tialle 5
SE2 = strel('disk', 5);               % diffinir la sturcture disque de tialle 5
     
IM2 = imopen(y,SE);             % appliquer la fonction imopen (ouverture ) pour carré de tialle 3
IM3 = imopen(y,SE1);             % appliquer la fonction imopen (ouverture ) pour carré de tialle 5 
IM4 = imopen(y,SE2);             % appliquer la fonction imopen (ouverture ) pour disque de tialle 5

%affichaages
subplot(2,3,2) , imshow(y);       title('image origine')
subplot(2,3,4) , imshow(IM2);  title('resultat  de ouverture 1')
subplot(2,3,5) , imshow(IM3);  title('resultat  de ouverture 2')
subplot(2,3,6) , imshow(IM4);  title('resultat  de ouverture 3')
