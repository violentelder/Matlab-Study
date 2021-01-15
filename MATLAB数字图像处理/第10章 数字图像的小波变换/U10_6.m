clear
close all
%=======图像的多层小波分解wavedec2=====
load woman;
nbcol = size(map,1);
% 采用db2小波进行两层图像分解
[c,s] = wavedec2(X,2,'db2');
% 获取原图像矩阵X的大小
siz = s(size(s,1),:);
% 提取多层小波分解结构c和s的第一层小波变换的近似系数
ca1 = appcoef2(c,s,'db2',1);
% 利用多层小波分解结构c和s提取第一层小波变换的细节系数的水平分量
chd1 = detcoef2('h',c,s,1);
% 利用多层小波分解结构c和s提取第一层小波变换的细节系数的垂直分量
cvd1 = detcoef2('v',c,s,1);
% 利用多层小波分解结构c和s提取第一层小波变换的细节系数的对角分量
cdd1 = detcoef2('d',c,s,1);
% 提取多层小波分解结构c和s的第二层小波变换的近似系数
ca2 = appcoef2(c,s,'db2',2);
% 利用多层小波分解结构c和s提取第二层小波变换的细节系数的水平分量
chd2 = detcoef2('h',c,s,2);
% 利用多层小波分解结构c和s提取第二层小波变换的细节系数的垂直分量
cvd2 = detcoef2('v',c,s,2);
% 利用多层小波分解结构c和s提取第二层小波变换的细节系数的对角分量
cdd2 = detcoef2('d',c,s,2);

ca11 = ca2 + chd2 + cvd2 + cdd2;
% 修改图形图像位置的默认设置
set(0,'defaultFigurePosition',[100,100,1000,500]);
% 修改图形背景颜色的设置
set(0,'defaultFigureColor',[1,1,1]);

figure
subplot(2,4,1)
imshow(uint8(wcodemat(ca2,nbcol)));
title('近似系数')
subplot(2,4,2)
imshow(uint8(wcodemat(chd2,nbcol)));
title('水平细节分量H2')
subplot(2,4,3)
imshow(uint8(wcodemat(cvd2,nbcol)));
title('垂直细节分量V2')
subplot(2,4,4)
imshow(uint8(wcodemat(cdd2,nbcol)));
title('对角细节分量D2')
subplot(2,4,5)
imshow(uint8(wcodemat(ca11,nbcol)));
title('重构近似系数A1')
subplot(2,4,6)
imshow(uint8(wcodemat(chd1,nbcol)));
title('水平细节分量H1')
subplot(2,4,7)
imshow(uint8(wcodemat(cvd1,nbcol)));
title('垂直细节分量V1')
subplot(2,4,8)
imshow(uint8(wcodemat(cdd1,nbcol)));
title('对角细节分量D1')

disp('小波二层分解的近似系数矩阵ca2的大小ca2_size：')
disp(s(1,:));
disp('小波二层分解的细节系数矩阵cd2的大小cd2_size：')
disp(s(2,:));
disp('小波一层分解的细节系数矩阵cd1的大小cd1_size：')
disp(s(3,:));
disp('原图像大小：')
disp(s(4,:));
disp('小波分解系数c的长度：')
disp(length(c));

