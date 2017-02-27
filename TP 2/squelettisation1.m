x = imread('peppers.png');       %aquérir une image
   
y = im2bw(x);                           % converte l'image en binaire
     
IM2 = bwmorph(y,'thin',inf);    % appliquer le squelettisation
    
%affichaages
subplot(1,2,1) , imshow(y);      title('image origine')
subplot(1,2,2) , imshow(IM2);  title('resultat de squelettisation')
