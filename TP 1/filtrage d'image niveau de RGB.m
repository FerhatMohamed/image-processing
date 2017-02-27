
% image niveau de RGB (Couleur)
x=imread('peppers.png');

%**************************************************************************
% un bruit d'image origine à la forme "gaussian"
gau=imnoise(x,'gaussian');

% filtrer l'images ...
h = fspecial('average' ,[4,4]);
       FA1=imfilter(gau, h);       % filter image avec filter moyenne.
w = fspecial('gaussian' ,[4,4]);
       FG1=imfilter(gau, w);       % filter image avec filter gausienne.
y = fspecial('laplacian' , 0.2);
       FL1=imfilter(gau, y);       % filter image avec filter laplacian.
z = fspecial('sobel'); 
       FS1=imfilter(gau, z);       % filter image avec filter soble. 
fm1(:,:,1) = medfilt2(gau(:,:,1));%*******************************
fm1(:,:,2) = medfilt2(gau(:,:,2));%filter image avec filter médian
fm1(:,:,3) = medfilt2(gau(:,:,3));%*******************************

 

%**************************************************************************
% un bruit d'image origine à la forme "poisson"
poi=imnoise(x,'poisson');

% filtrer l'images ...
h = fspecial('average' ,[3,3]);
       FA2=imfilter(poi, h);       % filter image avec filter moyenne.
w = fspecial('gaussian' ,[4,4]);
       FG2=imfilter(poi, w);       % filter image avec filter gausienne.
y = fspecial('laplacian' , 0.2);
       FL2=imfilter(poi, y);       % filter image avec filter laplacian.
z = fspecial('sobel');
       FS2=imfilter(poi, z);       % filter image avec filter soble.
fm2(:,:,1) = medfilt2(poi(:,:,1));   %********************************
fm2(:,:,2) = medfilt2(poi(:,:,2));   %filter image avec filter médian.
fm2(:,:,3) = medfilt2(poi(:,:,3));   %********************************


%**************************************************************************
% un bruit d'image origine à la forme "salt & pepper"
sp=imnoise(x,'salt & pepper');

% filtrer l'images ...
h = fspecial('average' ,[4,4]);
       FA3=imfilter(sp, h);       % filter image avec filter moyenne.
w = fspecial('gaussian' ,[4,4]);
       FG3=imfilter(sp, w);       % filter image avec filter gausienne.
y = fspecial('laplacian' , 0.2);
       FL3=imfilter(sp, y);       % filter image avec filter laplacian.
z = fspecial('sobel');
       FS3=imfilter(sp, z);       % filter image avec filter soble.
fm3(:,:,1) = medfilt2(sp(:,:,1));%*******************************
fm3(:,:,2) = medfilt2(sp(:,:,2));%filter image avec filter médian
fm3(:,:,3) = medfilt2(sp(:,:,3));%*******************************
           

%**************************************************************************
% un briut d'image origine à la forme "sepckle" 
spe=imnoise(x,'speckle');

% filtrer l'images ...
h = fspecial('average' ,[4,4]);
       FA4=imfilter(spe, h);       % filter image avec filter moyenne.
w = fspecial('gaussian' ,[4,4]);
       FG4=imfilter(spe, w);       % filter image avec filter gausienne.
y = fspecial('laplacian' , 0.2);
       FL4=imfilter(spe, y);       % filter image avec filter laplacian.
z = fspecial('sobel');
       FS4=imfilter(spe, z);       % filter image avec filter soble.
fm4(:,:,1) = medfilt2(spe(:,:,1));%********************************
fm4(:,:,2) = medfilt2(spe(:,:,2));%filter image avec filter médian
fm4(:,:,3) = medfilt2(spe(:,:,3));%********************************

%**************************************************************************
% l'affichage des images ...
subplot(5,6,1),  imshow(x),  title('image origine')

subplot(5,6,7),  imshow(gau),  title('image bruit gaussien')
subplot(5,6,8),  imshow(FA1), title('image filter moyenne')
subplot(5,6,9),  imshow(FG1), title('image filter gaussien')
subplot(5,6,10), imshow(FL1), title('image filter laplacien')
subplot(5,6,11), imshow(FS1), title('image filter soble')
subplot(5,6,12), imshow(fm1), title('image filter médian')

subplot(5,6,13), imshow(poi),  title('image bruit poisson')
subplot(5,6,14), imshow(FA2), title('image filter moyenne')
subplot(5,6,15), imshow(FG2), title('image filter gaussien')
subplot(5,6,16), imshow(FL2), title('image filter laplacien')
subplot(5,6,17), imshow(FS2), title('image filter soble')
subplot(5,6,18), imshow(fm2), title('image filter médian')

subplot(5,6,19), imshow(sp),  title('image bruit salt & pepper')
subplot(5,6,20), imshow(FA3), title('image filter moyenne')
subplot(5,6,21), imshow(FG3), title('image filter gaussien')
subplot(5,6,22), imshow(FL3), title('image filter laplacien')
subplot(5,6,23), imshow(FS3), title('image filter soble')
subplot(5,6,24), imshow(fm3), title('image filter médian')

subplot(5,6,25), imshow(spe),  title('image bruit speckle')
subplot(5,6,26), imshow(FA4), title('image filter moyenne')
subplot(5,6,27), imshow(FG4), title('image filter gaussien')
subplot(5,6,28), imshow(FL4), title('image filter laplacien')
subplot(5,6,29), imshow(FS4), title('image filter soble')
subplot(5,6,30), imshow(fm4), title('image filter médian')