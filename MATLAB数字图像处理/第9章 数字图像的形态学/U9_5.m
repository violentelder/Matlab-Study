clear
close all
%========��ֵͼ��ʴ����====
bw = imread('circles.png');
% ����һ��ƽ���Բ�νṹԪ��
se = strel('disk',11);
bw2 = imerode(bw,se);

figure
subplot(1,2,1)
imshow(bw);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(bw2);
title('��ʴͼ��')

