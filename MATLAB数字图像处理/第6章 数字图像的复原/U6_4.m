clear
close all
%========Matlabͼ��ԭ����====
%========��СԼ����ԭ���˷�====
i = imread('tissue.png');
i = im2double(i);
figure
subplot(2,3,1)
imshow(i);
title('ԭʼͼ��')

psf = fspecial('gaussian', 7, 10);
noise_var = 0.01;
blurred = imfilter(i,psf);
blurred_noisy = imnoise(blurred, 'gaussian', 0, noise_var);
% prod���i��ÿһ������Ԫ�صĳ˻����õ�һ��������
noise_power = noise_var * numel(i);
[j, large] = deconvreg(blurred_noisy, psf, noise_power);
subplot(2,3,2)
imshow(blurred_noisy);
title('ģ��+����')

subplot(2,3,3)
imshow(j);
title('[j, large] = deconvreg(A, psf, NP)')


subplot(2,3,4)
imshow(deconvreg(blurred_noisy, psf,[], large/10));
title('[j, large] = deconvreg(A, psf, [], large/10)')

subplot(2,3,5)
imshow(deconvreg(blurred_noisy, psf,[], large*10));
title('[j, large] = deconvreg(A, psf, [], large*10)')