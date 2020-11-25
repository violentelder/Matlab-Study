clear
close all
%======真彩色图像转换=====
%==转换为索引图像
RGB = imread('ngc6543a.jpg');
map = jet(256);
X = dither(RGB, map);
subplot(2,2,1);
imshow(RGB);
title('真彩图');
subplot(2,2,2);
imshow(X, map);
title('索引图');
%==转换为灰度图像
I = rgb2gray(RGB);
subplot(2,2,3);
imshow(I);
title('灰度图');
%==转换为二值图像
BW = im2bw(RGB,0.5);
subplot(2,2,4);
imshow(BW);
title('二值图');


