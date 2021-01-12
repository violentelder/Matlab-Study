clear
close all
%========Matlab图像复原方法====
%========最小约束复原二乘法====
i = imread('tissue.png');
i = im2double(i);
figure
subplot(2,3,1)
imshow(i);
title('原始图像')

psf = fspecial('gaussian', 7, 10);
noise_var = 0.01;
blurred = imfilter(i,psf);
blurred_noisy = imnoise(blurred, 'gaussian', 0, noise_var);
% prod求解i中每一列所有元素的乘积，得到一个行向量
noise_power = noise_var * numel(i);
[j, large] = deconvreg(blurred_noisy, psf, noise_power);
subplot(2,3,2)
imshow(blurred_noisy);
title('模糊+噪声')

subplot(2,3,3)
imshow(j);
title('[j, large] = deconvreg(A, psf, NP)')


subplot(2,3,4)
imshow(deconvreg(blurred_noisy, psf,[], large/10));
title('[j, large] = deconvreg(A, psf, [], large/10)')

subplot(2,3,5)
imshow(deconvreg(blurred_noisy, psf,[], large*10));
title('[j, large] = deconvreg(A, psf, [], large*10)')