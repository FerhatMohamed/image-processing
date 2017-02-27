
% image niveau de gris
x=imread('cameraman.tif');

%**************************************************************************
% les types de filter
h = fspecial('average' ,[4,4]);
w = fspecial('gaussian' ,[4,4]);
y = fspecial('laplacian' , 0.2);
z = fspecial('sobel'); 


%**************************************************************************
% un bruit d'image origine à la forme "gaussian"
gau=imnoise(x,'gaussian');
     FA1=imfilter(gau, h);       % filter image avec filter moyenne.
     FG1=imfilter(gau, w);      % filter image avec filter gausienne.
     FL1=imfilter(gau, y);        % filter image avec filter laplacian. 
     FS1=imfilter(gau, z);        % filter image avec filter soble.
     FM1= medfilt2(gau);       % filter image avec filter médian.


%**************************************************************************
% un bruit d'image origine à la forme "poisson"
poi=imnoise(x,'poisson');
     FA2=imfilter(poi, h);       % filter image avec filter moyenne.
     FG2=imfilter(poi, w);      % filter image avec filter gausienne.
     FL2=imfilter(poi, y);        % filter image avec filter laplacian.
     FS2=imfilter(poi, z);        % filter image avec filter soble.
     FM2 = medfilt2(poi);      % filter image avec filter médian.

 
%**************************************************************************
% un bruit d'image origine à la forme "salt & pepper"
sp=imnoise(x,'salt & pepper');
     FA3=imfilter(sp, h);         % filter image avec filter moyenne.
     FG3=imfilter(sp, w);         % filter image avec filter gausienne.
     FL3=imfilter(sp, y);         % filter image avec filter laplacian.
     FS3=imfilter(sp, z);         % filter image avec filter soble.
     FM3= medfilt2(sp);           % filter image avec filter médian.


%**************************************************************************
% un briut d'image origine à la forme "sepckle" 
spe=imnoise(x,'speckle');
     FA4=imfilter(spe, h);         % filter image avec filter moyenne.      
     FG4=imfilter(spe, w);         % filter image avec filter gausienne.
     FL4=imfilter(spe, y);         % filter image avec filter laplacian.
     FS4=imfilter(spe, z);         % filter image avec filter soble.
     FM4= medfilt2(spe);           % filter image avec filter médian.


%**************************************************************************
% l'affichage des images ...
subplot(5,6,1),   imshow(x),   title('image origine')

subplot(5,6,7),   imshow(gau), title('image bruit gaussien')
subplot(5,6,8),   imshow(FA1), title('image filter moyenne')
subplot(5,6,9),   imshow(FG1), title('image filter gaussien')
subplot(5,6,10),  imshow(FL1), title('image filter laplacien')
subplot(5,6,11),  imshow(FS1), title('image filter soble')
subplot(5,6,12),  imshow(FM1), title('image filter médian')

subplot(5,6,13),  imshow(poi), title('image bruit poisson')
subplot(5,6,14),  imshow(FA2), title('image filter moyenne')
subplot(5,6,15),  imshow(FG2), title('image filter gaussien')
subplot(5,6,16),  imshow(FL2), title('image filter laplacien')
subplot(5,6,17),  imshow(FS2), title('image filter soble')
subplot(5,6,18),  imshow(FM2), title('image filter médian')

subplot(5,6,19),  imshow(sp),  title('image bruit salt & pepper')
subplot(5,6,20),  imshow(FA3), title('image filter moyenne')
subplot(5,6,21),  imshow(FG3), title('image filter gaussien')
subplot(5,6,22),  imshow(FL3), title('image filter laplacien')
subplot(5,6,23),  imshow(FS3), title('image filter soble')
subplot(5,6,24),  imshow(FM3), title('image filter médian')

subplot(5,6,25),  imshow(spe), title('image bruit speckle')
subplot(5,6,26),  imshow(FA4), title('image filter moyenne')
subplot(5,6,27),  imshow(FG4), title('image filter gaussien')
subplot(5,6,28),  imshow(FL4), title('image filter laplacien')
subplot(5,6,29),  imshow(FS4), title('image filter soble')
subplot(5,6,30),  imshow(FM4), title('image filter médian')