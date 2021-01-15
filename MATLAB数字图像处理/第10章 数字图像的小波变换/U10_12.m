clear
close all
%=======提取二维小波变换的近似系数appcoef2=====
load woman;
figure
subplot(1,3,1)
imshow(X,map);
title('原始图像')

% 尺度为2，利用db1小波系数分解图像
[c,s] = wavedec2(X,2,'db1');
disp('原始图像的大小：')
disp(size(c))
disp(s)

% 提取尺度为2中的低频信号
ca2 = appcoef2(c,s,'db1',2);
subplot(1,3,2)
image(ca2)
colormap(map)
title('尺度为2中的低频图像')
disp('尺度2中的低频信号的大小为：')
disp(size(ca2))

% 提取尺度为2中的低频信号
ca1 = appcoef2(c,s,'db1',1);
subplot(1,3,3)
image(ca1)
colormap(map)
title('尺度为1中的低频图像')
disp('尺度1中的低频信号的大小为：')
disp(size(ca1))