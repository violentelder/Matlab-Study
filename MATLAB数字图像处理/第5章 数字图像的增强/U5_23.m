clear
close all
%======频率响应矩阵====
[f1,f2] = freqspace(25,'meshgrid');
hd = zeros(25);
d = sqrt(f1.^2 + f2.^2) < 0.5;
hd(d) = 1;
mesh(f1,f2,hd)
title('低通圆形滤波器')