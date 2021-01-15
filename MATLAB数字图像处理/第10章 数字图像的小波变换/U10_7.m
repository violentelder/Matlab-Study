clear
close all
%=======单层小波的图像重构idwt2=====
load woman;
nbcol = size(map,1);
[ca1, ch1, cv1, cd1] = dwt2(X,'db1');
sx = size(X);
a0 = idwt2(ca1, ch1, cv1, cd1,'db4',sx);
% 修改图形图像位置的默认设置
set(0,'defaultFigurePosition',[100,100,1000,500]);
% 修改图形背景颜色的设置
set(0,'defaultFigureColor',[1,1,1]);

figure
subplot(1,3,1)
imshow(X,map);
title('原始图像')
subplot(1,3,2)
imshow(uint8(a0));
title('重构图像')
subplot(1,3,3)
imshow(uint8(X-a0));
title('差异图像')