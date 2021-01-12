clear
close all
%========二值图像腐蚀运算====
bw = imread('circles.png');
% 产生一个平面的圆形结构元素
se = strel('disk',11);
bw2 = imerode(bw,se);

figure
subplot(1,2,1)
imshow(bw);
title('原始图像')
subplot(1,2,2)
imshow(bw2);
title('腐蚀图像')

