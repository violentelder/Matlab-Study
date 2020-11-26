clear
close all
%======二维线性滤波====
%3阶魔方矩阵
x = magic(3);
%生成长度20，角度45°的近似线性滤波器
h = fspecial('motion',20,45);
%二维线性滤波
y = filter2(h,x);

disp(y);