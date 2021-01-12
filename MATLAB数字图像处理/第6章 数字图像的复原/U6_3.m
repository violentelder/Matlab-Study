clear
close all
%========Matlabͼ��ԭ����====
%========ά���˲���ԭ��====
i = imread('cameraman.tif');
i = im2double(i);
figure
subplot(2,3,1)
imshow(i);
title('ԭʼͼ��')

% ģ���˶�ģ��������һ������չϵ��PSF����Ӧ�������˶�Խ��21���س�
% �˶����нǶ�Ϊ11
LEN = 21;
THETA = 11;
% �����˲���
PSF = fspecial('motion',LEN,THETA);
% ͼ��������
blurred = imfilter(i,PSF,'conv','circular');
subplot(2,3,2)
imshow(blurred)
title('�˶�ģ��ͼ��')

% ��һ��ģ��ͼ��ԭ��Ϊ�˿���PSF��ͼ��ԭ�е���Ҫ��
wnr1 = deconvwnr(blurred, PSF, 0);
subplot(2,3,3)
imshow(wnr1)
title('��ʵPSF��ԭͼ��')


% ģ���������
noise_var = 0.0001;
blurred_noisy = imnoise(blurred, 'gaussian', 0, noise_var);
subplot(2,3,4)
imshow(blurred_noisy);
title('ģ������ͼ��')

% �ָ����������˶�ģ��ͼ��,ʹ�����ű�NSR = 0
wnr2 = deconvwnr(blurred_noisy, PSF, 0);
subplot(2,3,5)
imshow(wnr2)
title('NSR = 0�ĸ�ԭͼ��')

% �ڶ��θ�ԭģ��ͼ��
signal_var = var(i(:));
wnr3 = deconvwnr(blurred_noisy, PSF, noise_var/signal_var);
subplot(2,3,6)
imshow(wnr3)
title('ʹ����ȷNSR�ĸ�ԭͼ��')






