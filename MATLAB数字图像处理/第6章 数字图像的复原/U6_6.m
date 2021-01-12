clear
close all
%========Matlabͼ��ԭ����====
%========ä�����ԭ��====
i = checkerboard(8);
i = im2double(i);
figure
subplot(2,3,1)
imshow(i);
title('ԭʼͼ��')

psf = fspecial('gaussian', 7, 10);
noise_var = 0.0001;
blurred = imfilter(i,psf);
blurred_noisy = imnoise(blurred, 'gaussian', 0, noise_var);

wt = zeros(size(i));
wt(5:end-4, 5:end-4) = 1;

% ��ʼ�������PSF
initpsf = ones(size(psf));
[j, p] = deconvblind(blurred_noisy, initpsf, 20, 10*sqrt(noise_var), wt);

subplot(2,3,2)
imshow(blurred_noisy);
title('ģ��+����')

subplot(2,3,3)
imshow(psf,[]);
title('��ʵ��PSF')

subplot(2,3,4)
imshow(j);
title('ä�����ԭ')

subplot(2,3,5)
imshow(p,[])
title('��ԭ�õ���PSF')
