clear
close all
%======图像的相关系数====
i = imread('pout.tif');
%中值滤波
j = medfilt2(i);
r = corr2(i,j);

figure
subplot(1,2,1)
imshow(i)
title('原始图像')
subplot(1,2,2)
imshow(j)
title('中值滤波')