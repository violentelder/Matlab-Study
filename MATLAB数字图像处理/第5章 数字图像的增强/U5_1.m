clear
close all
%======�˲���ʵ��====
i = imread('coins.png');
%��ά�˲���
h = ones(5,5)/25;
%�˲����ͼ��
i2 = imfilter(i,h);
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,2,2)
imshow(i2)
title('��ֵ�˲�')