clear
close all
%=======imadjust调节图像====
I = imread('pout.tif');
subplot(2,2,1)
imshow(I);
title('原始图像');
%====对比度增强
J = imadjust(I);
subplot(2,2,2)
imshow(J);
title('对比度增强')
%====调节亮度1
K = imadjust(I, [0.3,0.7], []);
subplot(2,2,3)
imshow(K);
title('图像变亮')
%=====调节亮度2
G = imadjust(I, [0.3,0.7],[0,1], 2);
subplot(2,2,4)
imshow(G);
title('图像变暗')