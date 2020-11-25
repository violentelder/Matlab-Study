clear
close all
%=====索引图像转换为灰度图像===
I = imread('rice.png');
[X1, map1] = gray2ind(I, 16);
X2 = grayslice(I, 8);
X3 = grayslice(I, 255 * [0 0.21 0.23 0.26 0.30 0.35 0.6 1.0]);
subplot(2,2,1);
imshow(I);
title('灰度图');
subplot(2,2,2);
imshow(X1, map1);
title('16灰度级图');
subplot(2,2,3)
imshow(X2, hot(8));
title('均匀量化图');
subplot(2,2,4)
imshow(X3, jet(8));
title('非均匀量化图');


