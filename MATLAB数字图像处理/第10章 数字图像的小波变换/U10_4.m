clear
close all
%=======实现小波分解的最大尺度wmaxlev=====

% 设置分解信号，数值向量
s1 = 2^10;
s2 = [2^10,2^9];

% 设置分解用的小波名称
w1 = 'db1';
w2 = 'db7';
disp('一维信号s1采用db1的最大分解层数L1：')
disp(wmaxlev(s1,w1));
disp('数值向量s2采用db1的最大分解层数L2：')
disp(wmaxlev(s2,w1));