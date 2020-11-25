clear
close all
%======图像变亮后的傅里叶变换====
i = imread('peppers.png');
j = rgb2gray(i);
j = j * exp(1);
j(find(j > 255)) = 255;
k = fft2(j);
%=====平移===
k = fftshift(k);
l = abs(k/256);
figure
subplot(1,2,1)
imshow(j)
title('变亮后图像')
subplot(1,2,2)
imshow(k)
title('频谱图')
