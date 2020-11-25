clear
close all
%======实现图像的傅里叶变换====
i = imread('cameraman.tif');
j = fft2(i);
k = ifft2(j)/255;
figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imshow(j)
title('傅里叶变换后的图像')
subplot(1,3,3)
imshow(k)
title('逆变换后的图像')