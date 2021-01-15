clear
close all
%=======小波滤波器wfilters=====

% 设置小波名称
wname = 'db5';

% 计算与给定小波相关联的4个滤波器
[lo_d, hi_d, lo_r, hi_r] = wfilters(wname);
figure
subplot(2,2,1)
stem(lo_d)
title('分解低通滤波器')
grid on
subplot(2,2,2)
stem(hi_d)
title('分解高通滤波器')
grid on
subplot(2,2,3)
stem(lo_r)
title('重构低通滤波器')
grid on
subplot(2,2,4)
stem(hi_r)
title('重构高通滤波器')
grid on