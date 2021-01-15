clear
close all
%=======单层小波的图像重构idwt2=====
load woman;
[c,s] = wavedec2(X,2,'sym4');
a0 = waverec2(c,s,'sym4');
figure
subplot(1,2,1)
imshow(X,map);
title('原始图像')
subplot(1,2,2)
imshow(uint8(a0));
title('重构图像')

disp(max(max(abs(X-a0))));