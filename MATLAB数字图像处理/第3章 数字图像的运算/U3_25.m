clear
close all
%=========利用nlfliter实现滑动邻域处理
a = imread('cameraman.tif');
a = im2double(a);
fun = @(x)median(x(:));
b = nlfilter(a, [3,3],fun);
figure
subplot(1,2,1)
imshow(a)
title('原始图像')
subplot(1,2,2)
imshow(b)
title('滑动邻域处理')