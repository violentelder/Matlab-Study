clear
close all
%======图像特征提取应用====
bw = imread('text.png');
a = bw(32 : 45, 88:98);
subplot(1,2,1)
imshow(bw);
subplot(1,2,2)
imshow(a);

%提取测试
C = real(ifft2(fft2(bw) .* fft2(rot90(a , 2) , 256, 256)));
figure(2)
subplot(1,2,1)
imshow(C,[])
title('模板与卷积')
max(C(:));
thresh = 60;
subplot(1,2,2)
imshow(C > thresh)
title('a字母定位')
