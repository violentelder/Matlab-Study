clear
close all
%=======实现二维小波变换的单层重构upwlev2=====
load woman
[c,s] = wavedec2(X,2,'db1');
disp('分解后的图像大小为：')
disp(size(c))
disp(s)

% 直接利用分解系数重构图像
[nc,ns] = upwlev2(c,s,'db1');
disp('重构后的图像大小为：')
disp(size(nc));
disp(ns)
