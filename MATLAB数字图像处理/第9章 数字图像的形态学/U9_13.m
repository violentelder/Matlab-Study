clear
close all
%========边界提取====
bw1 = imread('circbw.tif');
figure
subplot(2,2,1)
imshow(bw1);
title('原始图像')

bw2 = bwmorph(bw1,'skel',Inf);
subplot(2,2,2)
imshow(bw2);
title('原始图像的骨架')

bw3 = bwperim(bw1);
subplot(2,2,3)
imshow(bw3);
title('原始图像的边界')