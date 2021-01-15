clear
close all
%========小波用于图像压缩====
%=======阈值压缩图像函数wdecmp====
load detfingr.mat;
% colormap的范围
nbc = size(map,1);

[c,s] = wavedec2(X,2,'db4');
thr_h = [21,46];
thr_v = [21,46];
thr_d = [21,46];
thr = [thr_h;thr_v;thr_d];
[xcompress2, cxd, lxd, perf0, perfl2] = wdencmp('lvd',X,'db3',2,thr,'h');
% 修改图形图像位置的默认设置
set(0,'defaultFigurePosition',[100,100,1000,500]);
% 修改图形背景颜色的设置
set(0,'defaultFigureColor',[1,1,1]);
y = wcodemat(X,nbc);
y1 = wcodemat(xcompress2,nbc);
figure
subplot(2,2,1)
imshow(y,map)
axis square
title('映射数组压缩前的图像')
subplot(2,2,2)
imshow(y1,map)
axis square
title('映射数组压缩后的图像')
subplot(2,2,3)
image(y)
axis square
title('彩色方式压缩前的图像')
subplot(2,2,4)
image(y1)
axis square
title('彩色方式压缩后的图像')
% 显示压缩能量
disp('小波系数中置零的系数个数百分比：')
disp(perfl2)
disp('压缩后图像剩余能量百分比：')
disp(perf0)