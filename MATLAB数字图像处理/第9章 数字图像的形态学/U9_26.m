clear
close all
%=======图像的面积bwarea=====
bw1 = imread('circbw.tif');
imshow(bw1);
title('原始图像')

disp('膨胀前图像面积为：')
disp(bwarea(bw1))

se = ones(5);
bw2 = imdilate(bw1,se);
disp('膨胀后图像面积为：')
disp(bwarea(bw2))