clear
close all
%======中值滤波器====
i = imread('eight.tif');
j = imnoise(i,'salt & pepper',0.15);
k = medfilt2(j);

figure
subplot(2,1,1)
imshow(i)
title('原始图像')
subplot(2,1,2)
imshowpair(j,k,'montage')
title('中值滤波效果')

