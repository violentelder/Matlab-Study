clear
close all
%======ͼ�������ĸ���Ҷ�任====
i = imread('peppers.png');
j = rgb2gray(i);
j = j * exp(1);
j(find(j > 255)) = 255;
k = fft2(j);
%=====ƽ��===
k = fftshift(k);
l = abs(k/256);
figure
subplot(1,2,1)
imshow(j)
title('������ͼ��')
subplot(1,2,2)
imshow(k)
title('Ƶ��ͼ')
