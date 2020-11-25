clear
close all
%========histeq实现规定化处理====
I = imread('tire.tif');
%==hgram为一个向量，即直方图规定化映射，映射灰度区间为n，n越大映射的层级就越大
hgram = ones(1,256);
J = histeq(I, hgram);
subplot(2,2,1)
imshow(uint8(I));
title('原始图像');
subplot(2,2,2)
imshow(J)

subplot(2,2,3)
imhist(I);
title('原始图像直方图');
subplot(2,2,4)
imhist(J);
title('图像均衡化后直方图')
