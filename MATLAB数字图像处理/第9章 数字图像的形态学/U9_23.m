clear
close all
%========边界测定====
%=======获取二值图像边缘====
bw = imread('circles.png');
bw2 = bwperim(bw,8);
figure
subplot(1,2,1)
imshow(bw);
title('原始图像')
subplot(1,2,2)
imshow(bw2);
title('边缘图像')