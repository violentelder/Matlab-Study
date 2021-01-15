clear
close all
%========小波用于图像融合====
%=======利用图像融合恢复模糊图像====
load cathe_1.mat;
x1 = X;
load cathe_2.mat;
x2 = X;
% 基于小波分解的图像融合
xfus = wfusimg(x1,x2,'sym4',5,'max','max');
figure
subplot(1,3,1)
imshow(x1,map);
title('模糊图1')
axis square
subplot(1,3,2)
imshow(x2,map);
title('模糊图2')
axis square
subplot(1,3,3)
imshow(xfus,map);
title('恢复后的图像')
axis square
