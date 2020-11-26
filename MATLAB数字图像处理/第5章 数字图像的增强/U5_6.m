clear
close all
%======预定义滤波器====
i = imread('cameraman.tif');
subplot(2,2,1)
imshow(i)
title('原始图像')
%生成长度20，角度45°的近似线性滤波器
h = fspecial('motion',20,45);
motionblur = imfilter(i,h,'replicate');
subplot(2,2,2)
imshow(motionblur)
title('运动滤波器')

%生成半径为10的圆形均值滤波器
h2 = fspecial('disk',10);
blurred = imfilter(i,h2);
subplot(2,2,3)
imshow(blurred)
title('圆形滤波器')

%生成由拉式算子创建的掩膜滤波器
h3 = fspecial('unsharp');
sharpened = imfilter(i,h3,'replicate');
subplot(2,2,4)
imshow(sharpened)
title('掩膜滤波器')


