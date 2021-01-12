clear
close all
%========骨架提取====
i = imread('circles.png');
figure
subplot(1,3,1)
imshow(i);
title('原始图像')

% 对图像进行remove形态学操作，移除内部像素
i2 = bwmorph(i,'remove');
subplot(1,3,2)
imshow(i2);
title('remove形态学图像')

% 对图像进行skel形态学操作，目标边缘的像素点，但不分裂目标
i3 = bwmorph(i,'skel',Inf);
subplot(1,3,3)
imshow(i3);
title('skel形态学图像')