clear
close all
%======多阈值区域分割====
i = imread('lena.jpg');
i = rgb2gray(i);
figure
subplot(1,3,1)
imshow(i)
title('原始图像')

c = histc(i,0:255);
n = sum(c');
N = sum(n);
t = n/N;
subplot(1,3,2)
bar(0:255, t)
title('直方图')
hold off
axis([0,255,0,0.03])

%才有阈值法分割图像
[p, threshold] = min(t(120:150));
%寻找阈值
threshold = threshold + 120;
tt = find(i > threshold);
i(tt) = 255;
tt = find(i <= threshold);
i(tt) = 0;
subplot(1,3,3)
imshow(i)
title('阈值分割图像')


