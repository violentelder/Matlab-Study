clear
close all
%=======图像的欧拉数bweular=====
% 灰度图像
i = imread('circles.png');
% 二值图像
j = imread('circbw.tif');

disp('灰度图像的欧拉数：')
disp(bweuler(i,8))

disp('二值图像的欧拉数：')
disp(bweuler(j,8))