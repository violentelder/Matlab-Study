clear
close all
%======滤波的实现====
i = imread('coins.png');
%五维滤波器
h = ones(5,5)/25;
%滤波后的图像
i2 = imfilter(i,h);
figure
subplot(1,2,1)
imshow(i)
title('原始图像')
subplot(1,2,2)
imshow(i2)
title('均值滤波')