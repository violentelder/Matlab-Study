clear
close all
%======哈达玛变换函数hadamard====
i = imread('peppers.png');
i = rgb2gray(i);
i = im2double(i);
%图像的行
h1 = size(i,1);
%图像的列
h2 = size(i,2);
%hadamard变换矩阵
H1 = hadamard(h1);
H2 = hadamard(h2);
j =H1 *i * H2/sqrt(h1 * h2);

figure
subplot(1,2,1)
imshow(i)
title('原始图像')
subplot(1,2,2)
imshow(j)
title('hadamard变换')