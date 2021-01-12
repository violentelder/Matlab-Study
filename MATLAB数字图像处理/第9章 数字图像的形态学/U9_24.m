clear
close all
%========查表操作makelut，applylut====

% 建立匿名函数
lutfun = @(x)(sum(x(:)) == 4);
% 建立查找表
lut = makelut(lutfun,2);
bw1 = imread('text.png');
% 应用查找表bwlookup = applylut
bw2 = bwlookup(bw1,lut);

figure
subplot(1,2,1)
imshow(bw1);
title('原始图像')
subplot(1,2,2)
imshow(bw2);
title('极限腐蚀')