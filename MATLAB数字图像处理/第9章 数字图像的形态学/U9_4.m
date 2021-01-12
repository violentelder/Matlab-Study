clear
close all
%========灰度图像膨胀运算====
i = imread('cameraman.tif');
% 图像取反
i1 = 256 - i;
% 产生球形结构元素
se = strel('ball', 5, 5);
i2 = imdilate(i,se);
i3 = imdilate(i1,se);
% 对膨胀的图像进行取反
i4 = 256 - i3;

figure
subplot(2,2,1)
imshow(i);
title('原始图像')
subplot(2,2,2)
imshow(i1);
title('取反图像')
subplot(2,2,3)
imshow(i2);
title('原始图像膨胀')
subplot(2,2,4)
imshow(i3);
title('取反图像膨胀')

figure
imshow(i4);
title('对膨胀的图像进行取反')

