clear
close all
%======ͼ������ϵ��====
i = imread('pout.tif');
%��ֵ�˲�
j = medfilt2(i);
r = corr2(i,j);

figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,2,2)
imshow(j)
title('��ֵ�˲�')