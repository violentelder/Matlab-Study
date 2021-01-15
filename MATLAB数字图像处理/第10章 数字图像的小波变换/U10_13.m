clear
close all
%========小波用于图像去噪====
%=======利用小波分解和小波阈值实现去噪====
load noiswom
% 生成含噪图像并显示
init = 2055615866;
rng(init);
xx = X + 2 * randn(size(X));
[c,l] = wavedec2(xx,2,'db2');
a2 = wrcoef2('a',c,l,'db2',2);
% 设置尺度向量
n = [1,2];
% 设置阈值向量
p = [10.28,24.08];
% 对高频小波系数进行阈值处理
nc = wthcoef2('t',c,l,n,p,'s');
% 再次对高频小波系数进行阈值处理
mc = wthcoef2('t',nc,l,n,p,'s');
x2 = waverec2(mc,l,'db2');


figure
subplot(1,3,1)
image(xx);
colormap(map)
axis square
title('含噪图像图像')
subplot(1,3,2)
image(a2);
axis square
title('小波分解去噪')
subplot(1,3,3)
image(x2);
axis square
title('小波阈值去噪')

% 计算信噪比
ps = sum(sum((X-mean(mean(X))).^2));
pn = sum(sum((a2 - X).^2));
disp('利用小波2层分解去噪的信噪比：')
disp(10 * log10(ps/pn));
disp('利用小波阈值去噪的信噪比:');
pn1 = sum(sum((x2 - X).^2));
disp(10 * log10(ps/pn1));