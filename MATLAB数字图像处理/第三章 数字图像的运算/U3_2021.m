clear
close all
%==========利用imcrop实现图像的裁剪
i = imread('cat.jpg');
j2 = imcrop(i,[156 10 263 103]);
figure
subplot(1,2,1)
imshow(i)
title('原始图像')
subplot(1,2,2)
imshow(j2)
title('裁剪图像')

%=======实现手动裁剪图像
[I,map] = imread('cat.jpg');
figure(2)
imshow(I,map)
i2 = imcrop;
figure(3)
imshow(i2)
