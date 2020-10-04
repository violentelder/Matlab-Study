clear
close all
%=======imnoise添加椒盐噪声====
I = imread('eight.tif');
%=====imnoise(I,'salt & pepper',d)中d为噪声密度，默认为0.05
J = imnoise(I, 'salt & pepper',0.04);
subplot(1,2,1)
imshow(I);
title('原始图像')
subplot(1,2,2)
imshow(J);
title('添加椒盐噪声的图像')

