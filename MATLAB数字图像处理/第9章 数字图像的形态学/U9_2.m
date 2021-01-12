clear
close all
%========结构元素分解====
se1 = strel('diamond', 4);
% 分解为3个比较小的结构元素
seq = getsequence(se1);