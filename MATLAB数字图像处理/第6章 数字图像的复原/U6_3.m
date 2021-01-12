clear
close all
%========Matlab图像复原方法====
%========维纳滤波复原法====
i = imread('cameraman.tif');
i = im2double(i);
figure
subplot(2,3,1)
imshow(i);
title('原始图像')

% 模拟运动模糊，生成一个点扩展系数PSF，相应的线性运动越过21像素长
% 运动运行角度为11
LEN = 21;
THETA = 11;
% 生成滤波器
PSF = fspecial('motion',LEN,THETA);
% 图像卷积运算
blurred = imfilter(i,PSF,'conv','circular');
subplot(2,3,2)
imshow(blurred)
title('运动模糊图像')

% 第一次模糊图像复原，为了考察PSF在图像复原中的重要性
wnr1 = deconvwnr(blurred, PSF, 0);
subplot(2,3,3)
imshow(wnr1)
title('真实PSF复原图像')


% 模拟添加噪声
noise_var = 0.0001;
blurred_noisy = imnoise(blurred, 'gaussian', 0, noise_var);
subplot(2,3,4)
imshow(blurred_noisy);
title('模糊噪声图像')

% 恢复带噪声的运动模糊图像,使用噪信比NSR = 0
wnr2 = deconvwnr(blurred_noisy, PSF, 0);
subplot(2,3,5)
imshow(wnr2)
title('NSR = 0的复原图像')

% 第二次复原模糊图像
signal_var = var(i(:));
wnr3 = deconvwnr(blurred_noisy, PSF, noise_var/signal_var);
subplot(2,3,6)
imshow(wnr3)
title('使用正确NSR的复原图像')






