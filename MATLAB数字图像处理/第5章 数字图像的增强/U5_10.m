clear
close all
%======图像的等高线====
i = imread('onion.png');
j = rgb2gray(i);

figure
subplot(1,2,1)
imshow(j)
title('原始图像')
subplot(1,2,2)
imcontour(j,3)
title('等高线')