clear
close all
%========Matlabͼ��ԭ����====
%========���˲���ԭ��====
i = imread('rice.png');
figure
subplot(1,3,1)
imshow(i);
title('ԭʼͼ��')

% �����˶�ģ��ͼ��
psf = fspecial('motion', 40, 75);
% ��psf�����˻�ͼ��
MF = imfilter(i,psf,'circular');
noise = imnoise(zeros(size(i)), 'gaussian', 0.01);
MFN = imadd(MF, im2uint8(noise));
subplot(1,3,2)
imshow(MFN,[])
title('����ͼ��')

% ���������
NSR = sum(noise(:).^2) / sum(MFN(:).^2);
subplot(1,3,3)
imshow(deconvwnr(MFN,psf, NSR));
title('���˲���ԭ');