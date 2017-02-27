x = imread('peppers.png');      %aquérir une image   
y = im2bw(x);                          % converte l'image en binaire

SE = strel('square', 3);             % diffinir la sturcture

IM2 = imerode(y,SE);             % appliquer la fonction imerode (erosion )
IM3 = imerode(IM2,SE);        % appliquer la fonction imerode (erosion ) sur image erosion

%affichaages
subplot(1,3,1) , imshow(y);        title('image origine')
subplot(1,3,2) , imshow(IM2);   title('resultat  de erosion 1')
subplot(1,3,3) , imshow(IM3);   title('resultat  de erosion 2')
