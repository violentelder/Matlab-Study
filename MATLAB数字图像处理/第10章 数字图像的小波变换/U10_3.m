clear
close all
%=======二维小波函数和尺度函数的实现wavefun2=====

% 设置迭代次数和小波名称
iter = 4;
wav = 'sym4';
% 计算小波函数和尺度函数并迭代画图
[s,w1,w2,w3,xyval] = wavefun2(wav,iter,0);