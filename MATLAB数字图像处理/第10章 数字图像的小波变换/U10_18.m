clear
close all
%=======小波用于图像增强=====
load sinsin.mat
figure
subplot(1,2,1)
imshow(X,map);
title('原始图像')
axis square

% 进行图像增强处理
% 用小波函数sym4对X进行2层小波分解
[c,s] = wavedec2(X,2,'sym4');
sizec = size(c);
% 对分解系数进行处理以突出轮廓部分，弱化细节部分
for i = 1:sizec(2)
    if(c(i) > 350)
        c(i) = 2 * c(i);
    else
        c(i) = 0.5 * c(i);
    end
end
xx = waverec2(c,s,'sym4');
% 画出重构后的图像
subplot(1,2,2)
imshow(xx,map);
title('增强图像')
axis square