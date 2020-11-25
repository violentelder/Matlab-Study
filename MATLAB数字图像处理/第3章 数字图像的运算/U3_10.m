clear
close all
%=======利用imadd方法实现时域噪声抑制====
I = imread('eight.tif');
%==imnoise(I,'gaussian',m,var_gauss),m为噪声均值，v为方差
J1 = imnoise(I,'gaussian',0, 0.006);
J2 = imnoise(I,'gaussian',0, 0.006);
J3 = imnoise(I,'gaussian',0, 0.006);
J4 = imnoise(I,'gaussian',0, 0.006);
%====线性组合
K = imlincomb(0.3,J1,0.3,J2,0.3,J3,0.3,J4);
figure
subplot(1,3,1)
imshow(I)
title('原始图像')
subplot(1,3,2)
imshow(J1)
title('添加高斯噪声后')
subplot(1,3,3)
imshow(K,[])
title('抑制噪声后')

