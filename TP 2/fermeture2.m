x = imread('peppers.png');        %aqu�rir une image
    
y = im2bw(x);                            % converte l'image en binaire
     
SE = strel('square', 3);               % diffinir la sturcture carr� de tialle 3
SE1 = strel('square', 5);             % diffinir la sturcture carr� de tialle 5
SE2 = strel('disk', 5);                 % diffinir la sturcture disque de tialle 5
     
IM2 = imclose(y,SE);                 % appliquer la fonction imclose (fermeture) pour carr� de tialle 3
IM3 = imclose(y,SE1);               % appliquer la fonction imclose (fermeture) pour carr� de tialle 5
IM4 = imclose(y,SE2);               % appliquer la fonction imclose (fermeture) pour disque de tialle 5

%affichaages
subplot(2,3,2) , imshow(y);      title('image origine')
subplot(2,3,4) , imshow(IM2); title('resultat  de fermeture 1')
subplot(2,3,5) , imshow(IM3); title('resultat  de fermeture 2')
subplot(2,3,6) , imshow(IM4); title('resultat  de fermeture 3')