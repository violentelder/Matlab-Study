clear
close all
%=========利用imsubtract消除图像背景
I = imread('rice.png');
background = imopen(I,strel('disk',15));
Ip = imsubtract(I,background);

figure
subplot(1,3,1)
imshow(I)
title('原始图像');
subplot(1,3,2)
imshow(background);
title('背景图')
subplot(1,3,3)
imshow(Ip)
title('去除背景后')