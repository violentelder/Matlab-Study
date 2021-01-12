clear
close all
%========二值图像膨胀运算====
bw = imread('text.png');
se = strel('line',11,90);
bw2 = imdilate(bw, se);

figure
subplot(1,2,1)
imshow(bw);
title('原始图像')
subplot(1,2,2)
imshow(bw2);
title('图像膨胀')

