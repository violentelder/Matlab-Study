clear
close all
%========边界提取====
bw1 = imread('circbw.tif');
figure
subplot(1,2,1)
imshow(bw1);
title('原始图像')

interval = [0,-1,-1; 1,1,-1; 0,1,0];
bw2 = bwhitmiss(bw1, interval);
subplot(1,2,2)
imshow(bw2);
title('击中或击不中')