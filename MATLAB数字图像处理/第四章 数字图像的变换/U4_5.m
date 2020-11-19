clear
close all
%======在滤波器中的应用====
%======巴特沃斯高通滤波器====
 i = imread('cameraman.tif');
 i = im2double(i);
 %傅里叶平移与变换
 j = fftshift(fft2(i));
 %产生离散数据
 [x,y] = meshgrid(-128:127, -128:127);
 z = sqrt(x .^ 2 + y .^ 2);
 %滤波器的截止
 D1 = 10; 
 D2 = 35;
 %滤波器的阶数
 n1 = 4;
 n2 = 8;
 
 %==搭建滤波器==
 h1 = 1./(1 + (D1 ./ z) .^(2 * n1));
 h2 = 1./(1 + (D2 ./ z) .^(2 * n2));
 k1 = j .* h1;
 k2 = j .* h2;
 
 l1 = ifft2(ifftshift(k1));
 l2 = ifft2(ifftshift(k2));
 
figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imshow(l1)
title('巴特沃斯高通滤波器 10hz')
subplot(1,3,3)
imshow(l2)
title('巴特沃斯高通滤波器 35hz')

 
 