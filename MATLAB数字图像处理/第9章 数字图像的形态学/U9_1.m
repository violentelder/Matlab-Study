clear
close all
%========创建结构元素====
% 钻石型结构元素,原点到菱形尖端的距离为3
se1 = strel('diamond', 3);

%线性结构元素，角度60度
se2 = strel('line',10,60);