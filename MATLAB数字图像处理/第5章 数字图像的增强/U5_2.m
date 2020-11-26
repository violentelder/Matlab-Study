clear
close all
%======边界填充选项====
i = imread('peppers.png');
h = ones(5,5)/25;
i2 = imfilter(i,h);
i3 = imfilter(i,h,'replicate');

figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imshow(i2)
title('0填充')
subplot(1,3,3)
imshow(i3)
title('边界复制填充')