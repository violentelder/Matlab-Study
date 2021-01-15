clear
close all
%=======一维小波函数和尺度函数的实现wavefun=====

% 设置迭代次数和小波名称
iter = 10;
wav = 'sym4';
% 计算近似的小波函数
for i = 1:iter
    [phi,psi,xval] = wavefun(wav,i);
    plot(xval,psi);
    hold on
end
a = [1:iter];
b = num2str(a');
legend(b);
title('小波函数sym4的近似值（iter从1到10）')
hold off