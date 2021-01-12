clear
close all
%========Matlab图像复原方法====
%========Lucy-Richardson复原法====
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
j1 = deconvlucy(blurred_noisy, psf);
j2 = deconvlucy(blurred_noisy, psf, 20, sqrt(noise_var));
j3 = deconvlucy(blurred_noisy, psf, 20, sqrt(noise_var), wt);

subplot(2,3,2)
imshow(blurred_noisy);
title('模糊+噪声')

subplot(2,3,3)
imshow(j1);
title('deconvlucy(A, psf)')

subplot(2,3,4)
imshow(j2);
title('deconvlucy(A, psf, NI, DP)')

subplot(2,3,5)
imshow(j3);
title('deconvlucy(A, psf, NI, DP, WT)')

