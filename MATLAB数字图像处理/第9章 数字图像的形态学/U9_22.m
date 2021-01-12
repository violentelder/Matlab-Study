clear
close all
%========边界测定====
%=======获取灰度图像边缘====
i = imread('rice.png');
se = strel('disk',1);
j = imdilate(i,se);
k = imerode(i,se);
l = j - k;

figure
subplot(1,2,1)
imshow(i);
title('原始图像')
subplot(1,2,2)
imshow(l);
title('图像边界')