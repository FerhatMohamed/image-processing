x = imread('peppers.png');        %aquérir une image
  
y = im2bw(x);                            % converte l'image en binaire

SE = strel('square', 3);                % diffinir la sturcture
   
IM2 = imdilate(y,SE);               % appliquer la fonction imdilate (dilatation 1)
IM3 = imdilate(IM2,SE);           % appliquer la fonction imdilate (dilatation 2)

%affichaages
subplot(1,3,1) , imshow(y);       title('image origine')
subplot(1,3,2) , imshow(IM2);  title('resultat  de dilatation 1')
subplot(1,3,3) , imshow(IM3);  title('resultat  de dilatation 2')
