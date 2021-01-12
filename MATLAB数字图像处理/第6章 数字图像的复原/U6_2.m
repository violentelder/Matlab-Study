clear
close all
%========Matlab图像复原方法====
%========逆滤波复原法====
i = imread('rice.png');
figure
subplot(1,3,1)
imshow(i);
title('原始图像')

% 生成运动模糊图像
psf = fspecial('motion', 40, 75);
% 用psf产生退化图像
MF = imfilter(i,psf,'circular');
noise = imnoise(zeros(size(i)), 'gaussian', 0.01);
MFN = imadd(MF, im2uint8(noise));
subplot(1,3,2)
imshow(MFN,[])
title('含噪图像')

% 计算信噪比
NSR = sum(noise(:).^2) / sum(MFN(:).^2);
subplot(1,3,3)
imshow(deconvwnr(MFN,psf, NSR));
title('逆滤波复原');