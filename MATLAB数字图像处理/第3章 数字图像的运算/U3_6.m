clear
close all
%========histeq实现直方图均衡化====
I = imread('tire.tif');
J = histeq(I);
subplot(2,2,1)
imshow(I);
title('原始图像')
subplot(2,2,2)
imshow(J);
title('图像均衡化')

subplot(2,2,3)
%====64代表将直方图分为64个灰度级
imhist(I,64);
title('原始图像直方图');
subplot(2,2,4)
imhist(J);
title('图像均衡化后直方图')