clear
close all
%======自适应滤波器====
rgb = imread('saturn.png');
i = rgb2gray(rgb);
j = imnoise(i,'gaussian',0,0.025);
k = wiener2(j,[5 5]);

figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imshow(j)
title('高斯噪声')
subplot(1,3,3)
imshow(k)
title('自适应滤波')