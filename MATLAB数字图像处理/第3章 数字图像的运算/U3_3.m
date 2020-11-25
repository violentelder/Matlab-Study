clear
close all
%=======非线性变换====
R = imread('peppers.png');
G = rgb2gray(R);
J = double(G);
H = (log(J + 1)) / 10;

figure
subplot(1,2,1)
imshow(G);
title('灰度图像');
subplot(1,2,2)
imshow(H);
title('非线性变换图像');
