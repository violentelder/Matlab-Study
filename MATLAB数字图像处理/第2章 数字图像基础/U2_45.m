clear
close all
%=====RGB转换为YCbCr===
RGB = imread('board.tif');
subplot(1,3,1);
imshow(RGB);
title('真彩色图像');
YCBCR = rgb2ycbcr(RGB);
subplot(1,3,2);
imshow(YCBCR);
title('YCbCr图像');
map = jet(256);
newmap = rgb2ycbcr(map);
subplot(1,3,3);
imshow(newmap);
title('YCbCr色图');

figure(2)
rgb2 = ycbcr2rgb(YCBCR);
subplot(1,3,1);
imshow(RGB);
title('原始真彩色图像');
subplot(1,3,2);
imshow(YCBCR);
title('YCbCr图像');
subplot(1,3,3);
imshow(rgb2);
title('转换后的RGB图像');