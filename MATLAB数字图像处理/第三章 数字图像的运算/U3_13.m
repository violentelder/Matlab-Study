clear
close all
%=========immultiply实现图像的乘法
I = imread('wflower.jpg');
I16 = uint16(I);
J = immultiply(I16, I16);
J2 = immultiply(I, 0.65);
figure
subplot(2,2,1)
imshow(I)
title('原始图像')
subplot(2,2,2)
imshow(J)
title('图像自相乘结果')
subplot(2,2,3)
imshow(J2)
title('图像与常数相乘')