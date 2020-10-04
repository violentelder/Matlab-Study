clear
close all
%=====拆分HSV图像阵列===
%调整颜色条尺寸为正方形
RGB = reshape(ones(64, 1) * reshape(jet(64), 1, 192), [64,64,3]);
HSV = rgb2hsv(RGB);
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
subplot(2,2,1);
imshow(RGB);
title('RGB图像');

subplot(2,2,2);
imshow(H);
title('H图像');

subplot(2,2,3);
imshow(S);
title('S图像');

subplot(2,2,4);
imshow(V);
title('V图像');





