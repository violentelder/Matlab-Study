clear
close all
%========图像的噪声====
i = imread('cameraman.tif');
i = im2double(i);
figure
subplot(1,2,1)
imshow(i);
title('原始图像')
subplot(1,2,2)
imhist(i);
title('原始图像的直方图')

j=imnoise(i, 'gaussian', 0, 0.015);
figure
subplot(1,2,1)
imshow(j);
title('添加高斯噪声')
subplot(1,2,2)
imhist(j);
title('添加高斯噪声的直方图')

j2=imnoise(i, 'salt & pepper', 0.015);
figure
subplot(1,2,1)
imshow(j2);
title('添加椒盐噪声')
subplot(1,2,2)
imhist(j2);
title('添加椒盐噪声的直方图')

j3=imnoise(i, 'poisson');
figure
subplot(1,2,1)
imshow(j3);
title('添加泊松噪声')
subplot(1,2,2)
imhist(j3);
title('添加泊松噪声的直方图')

j4=imnoise(i, 'speckle',0.15);
figure
subplot(1,2,1)
imshow(j4);
title('添加乘性噪声')
subplot(1,2,2)
imhist(j4);
title('添加乘性噪声的直方图')





