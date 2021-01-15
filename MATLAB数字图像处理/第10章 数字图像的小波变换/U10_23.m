clear
close all
%=======小波用于图像边缘检测=====
load bust.mat;
% 加入含噪
init = 2055615866;
rng(init);
x1 = X + 20 * randn(size(X));
subplot(2,2,1)
image(x1);
colormap(map)
title('原始图像')
axis square
% 用小波db4对图像进行小波包分解
t = wpdec2(x1,1,'db4');
% 重构图像近似部分
a = wprcoef(t,[1,0]);
subplot(2,2,2)
image(a)
title('图像的近似部分')
axis square

% 原图像的边缘提取
bw1 = edge(x1,'prewitt');
subplot(2,2,3)
imshow(bw1);
title('原图像的边缘')
axis square

% 图像近似部分的边缘提取
bw2 = edge(a,'prewitt');
subplot(2,2,4)
imshow(bw2);
title('图像近似部分的边缘')
axis square

