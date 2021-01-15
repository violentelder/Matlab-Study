clear
close all
%========小波用于图像去噪====
%=======利用不同阈值对图像去噪====
load facets
figure
subplot(2,2,1)
image(X);
colormap(map)
axis square
title('原始图像')

% 产生含噪声图像
init = 2055615866;
rng(init);
x = X + 50 * randn(size(X));
subplot(2,2,2)
image(x);
colormap(map)
axis square
title('含噪图像图像')

% 进行图像的降噪处理
[c,s] = wavedec2(x,2,'coif3');
% 提取小波分解中的第一层的低频图像，实现低通滤波去噪
% 设置尺度向量n
n = [1,2];
% 设置阈值向量
p = [10.12,23.28];
% 对三个方向高频系数进行阈值处理
nc = wthcoef2('h',c,s,n,p,'s');
nc = wthcoef2('v',c,s,n,p,'s');
nc = wthcoef2('d',c,s,n,p,'s');
% 对的新的小波分解结构[nc,s]进行重构
x1 = waverec2(nc,s,'coif3');
subplot(2,2,3)
image(x1);
colormap(map)
axis square
title('第一次去噪后的图像')

xx = wthcoef2('v',nc,s,n,p,'s');
x2 = waverec2(xx,s,'coif2');
subplot(2,2,4)
image(x2);
colormap(map)
axis square
title('第二次去噪后的图像')

