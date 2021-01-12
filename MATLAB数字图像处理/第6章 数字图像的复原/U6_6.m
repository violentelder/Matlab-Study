clear
close all
%========Matlab图像复原方法====
%========盲卷积复原法====
i = checkerboard(8);
i = im2double(i);
figure
subplot(2,3,1)
imshow(i);
title('原始图像')

psf = fspecial('gaussian', 7, 10);
noise_var = 0.0001;
blurred = imfilter(i,psf);
blurred_noisy = imnoise(blurred, 'gaussian', 0, noise_var);

wt = zeros(size(i));
wt(5:end-4, 5:end-4) = 1;

% 初始化最初的PSF
initpsf = ones(size(psf));
[j, p] = deconvblind(blurred_noisy, initpsf, 20, 10*sqrt(noise_var), wt);

subplot(2,3,2)
imshow(blurred_noisy);
title('模糊+噪声')

subplot(2,3,3)
imshow(psf,[]);
title('真实的PSF')

subplot(2,3,4)
imshow(j);
title('盲卷积复原')

subplot(2,3,5)
imshow(p,[])
title('复原得到的PSF')
