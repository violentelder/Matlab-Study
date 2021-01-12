clear
close all
%======双峰法====
i = imread('pout.tif');
figure
subplot(1,3,1)
imshow(i)
title('原始图像')
subplot(1,3,2)
imhist(i)
title('直方图')

%根据直方图选择阈值为120，区分前景和后景
newi = imbinarize(i,120/255);
subplot(1,3,3)
imshow(newi)
title('双峰法分割图像')
