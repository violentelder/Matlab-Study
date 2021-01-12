clear
close all
%======二阶微分算子====
i = imread('tire.tif');
figure
subplot(1,3,1)
imshow(i)
title('原始图像')
%LOG算子
bw1 = edge(i, 'log', 0.015);
subplot(1,3,2)
imshow(bw1)
title('LOG算子边缘检测')
%Canny算子
bw2 = edge(i, 'canny', 0.15);
subplot(1,3,3)
imshow(bw2)
title('canny算子边缘检测')