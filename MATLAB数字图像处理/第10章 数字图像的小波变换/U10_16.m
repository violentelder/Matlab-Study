clear
close all
%========小波用于图像压缩====
%=======小波变换后保留低频部分实现压缩wcodemat====
load woman;
figure
subplot(1,3,1)
imshow(X,map);
title('原始图像')

% colormap的范围
nbcol = size(map,1);

% 利用db1对图像进行单层二维离散分解
[ca1, ch1, cv1, cd1] = dwt2(X,'db1');
subplot(1,3,2)
imshow(ca1,map);
title('未缩放的图像')

% 对图像进行缩放
cd = wcodemat(ca1,nbcol);
subplot(1,3,3)
imshow(cd,map);
title('缩放的图像')