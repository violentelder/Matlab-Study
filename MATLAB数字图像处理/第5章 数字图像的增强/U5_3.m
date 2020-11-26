clear
close all
%======真彩色滤波====
i = imread('peppers.png');
h = ones(5,5)/25;
i2 = imfilter(i,h);
i3 = imfilter(i,h,'symmetric');

figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imshow(i2)
title('均值滤波')
subplot(1,3,3)
imshow(i3)
title('镜像反射填充滤波')
