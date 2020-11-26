clear
close all
%======线性锐化====
i = imread('lena.jpg');
i = rgb2gray(i);
subplot(1,2,1)
imshow(i)
title('原始图像')

i = double(i);
%拉普拉斯算子
h = [0 1 0,1 -4 1,0 1 0];
j = conv2(i,h,'same');
%增强的图像为原始图像减去卷积后的图像
k = i-j;
subplot(1,2,2)
imshow(k)
title('锐化滤波处理')

