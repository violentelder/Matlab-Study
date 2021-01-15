clear
close all
%========小波用于图像融合====
%=======利用图像融合函数wfusing====
load mask.mat;
x1 = X;
figure
subplot(2,2,1)
imshow(X,map);
title('原始mask图像')
axis square

load bust.mat;
x2 = X;
subplot(2,2,2)
imshow(X,map);
title('原始bust图像')
axis square

% 实现平均融合
xfusmean = wfusimg(x1,x2,'db2',5,'mean','mean');
% 实现最大最小值融合
wfusmaxmin = wfusimg(x1,x2,'db2',5,'max','min');

subplot(2,2,3)
imshow(xfusmean,map);
title('图像平均融合')
axis square
subplot(2,2,4)
imshow(wfusmaxmin,map);
title('图像最大最小值融合')
axis square