 
x = imread('peppers.png');

F1(:,:,1) = histeq(x(:,:,1));
F1(:,:,2) = histeq(x(:,:,2));
F1(:,:,3) = histeq(x(:,:,3));
   
subplot(1,2,1),       imshow(x),   title('image origine');
subplot(1,2,2),       imshow(F1),   title('HE image');