clear
close all
%======图像均值====
i = imread('onion.png');
j = rgb2gray(i);
gray = mean2(j);
rgb = mean2(i);
r = mean2(i(:,:,1));
g = mean2(i(:,:,2));
b = mean2(i(:,:,3));

figure
subplot(1,2,1)
imshow(uint8(i));
title('原始图像')
subplot(1,2,2)
imshow(uint8(j))
title('灰度图像')


