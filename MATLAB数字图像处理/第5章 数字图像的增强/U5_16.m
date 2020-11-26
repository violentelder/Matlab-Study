clear
close all
%======拉普拉斯算子锐化====
i = imread('parkavenue.jpg');
i = rgb2gray(i);

h1 = [0 -1 0; -1 5 -1; 0 -1 0];
h2 = [-1 -1 -1; -1 9 -1; -1 -1 -1];
bw1 = imfilter(i,h1);
bw2 = imfilter(i,h2);

figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imshow(uint8(bw1))
title('四邻域')
subplot(1,3,3)
imshow(uint8(bw2))
title('八邻域')


