clear
close all
%=======һάС�������ͳ߶Ⱥ�����ʵ��wavefun=====

% ���õ���������С������
iter = 10;
wav = 'sym4';
% ������Ƶ�С������
for i = 1:iter
    [phi,psi,xval] = wavefun(wav,i);
    plot(xval,psi);
    hold on
end
a = [1:iter];
b = num2str(a');
legend(b);
title('С������sym4�Ľ���ֵ��iter��1��10��')
hold off