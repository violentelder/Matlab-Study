clear
close all
%======fwind2 窗函数法====
[f1,f2] = freqspace(21,'meshgrid');
hd = ones(21);
r = sqrt(f1.^2 + f2.^2);
hd((r<0.1) | (r > 0.5)) = 0;
colormap(jet(64));
subplot(1,3,1)
mesh(f1,f2,hd);
title('二维频率响应')

win = fspecial('gaussian',21,2);
win = win./max(win(:));
subplot(1,3,2)
mesh(win)
title('高斯滤波器')

h = fwind2(hd,win);
subplot(1,3,3)
freqz2(h)
title('fwind2窗函数的频率响应')