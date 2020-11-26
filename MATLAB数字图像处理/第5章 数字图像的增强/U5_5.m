clear
close all
%======sobel算子边缘检测算法====
%生成指定矩阵卷积核
s = [1,2,1;
    0,0,0;
    -1,-2,-1];
%使用二维卷积运算从A中凸起的记做提取水平边缘
a = zeros(10);
a(3:7,3:7) = ones(5);
% conv函数用于二维卷积运算
h = conv2(a,s);

figure
mesh(h)
title('提取a的水平边缘')

%对s转置求解A的垂直边缘
v = conv2(a,s');
figure
mesh(v)
title('提取a的垂直边缘')

%结合水平和垂直边缘
figure
mesh(sqrt(h.^2 + v.^2))

