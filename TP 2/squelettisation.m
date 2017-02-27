x = imread('peppers.png');       %aquérir une image
    
y = im2bw(x);                           % converte l'image en binaire
     
 IM2 = bwmorph(y,'bothat');    % appliquer le squelettisation
 IM2 = bwmorph(y,'close');    % appliquer le squelettisation
 IM2 = bwmorph(y,'open');    % appliquer le squelettisation
 IM2 = bwmorph(y,'tophat');    % appliquer le squelettisation
%affichaages
subplot(3,2,1.5) , imshow(y);       title('image origine')
subplot(3,2,3) , imshow(IM2);  title('resultat de squelettisation 1')
subplot(3,2,4) , imshow(IM2);  title('resultat de squelettisation 2')
subplot(3,2,5) , imshow(IM2);  title('resultat de squelettisation 3')
subplot(3,2,6) , imshow(IM2);  title('resultat de squelettisation 4')

