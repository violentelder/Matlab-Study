clear
close all
%========形态学滤波====
%=======高低帽滤波增强图像对比度=====
i = imread('pout.tif');
figure
subplot(1,2,1)
imshow(i);
title('原始图像')

se = strel('disk',3);
j = imsubtract(imadd(i,imtophat(i,se)),imbothat(i,se));
subplot(1,2,2)
imshow(j);
title('高低帽滤波')