clear
close all
%====直方图====
I = imread('pout.tif');
subplot(1,2,1)
imshow(I);
title('原始图像');
subplot(1,2,2)
imhist(I);
title('灰度直方图')
