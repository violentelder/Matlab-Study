clear
close all
%=======imdivide实现图像的除法运算
I = imread('office_1.jpg');
J = imread('office_2.jpg');
Ip = imdivide(J,I);
K = imdivide(J, 0.45);

figure
subplot(2,2,1)
imshow(I)
title('office1')
subplot(2,2,2)
imshow(J)
title('office2')
subplot(2,2,3)
imshow(Ip)
title('两幅图像相除')
subplot(2,2,4)
imshow(K)
title('图像与常数相除')
