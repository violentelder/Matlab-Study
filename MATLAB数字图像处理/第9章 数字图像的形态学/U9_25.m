clear
close all
%=======对象选择bwselect=====
bw1 = imread('text.png');
% 对象横坐标
c = [43,185,212];
% 对象横坐标
r = [36,68,181];

bw2 = bwselect(bw1,c,r,4);
figure
subplot(1,2,1)
imshow(bw1);
title('原始图像')
subplot(1,2,2)
imshow(bw2);
title('图像标记')