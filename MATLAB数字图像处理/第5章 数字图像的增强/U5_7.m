clear
close all
%======ͼ���ֵ====
i = imread('onion.png');
j = rgb2gray(i);
gray = mean2(j);
rgb = mean2(i);
r = mean2(i(:,:,1));
g = mean2(i(:,:,2));
b = mean2(i(:,:,3));

figure
subplot(1,2,1)
imshow(uint8(i));
title('ԭʼͼ��')
subplot(1,2,2)
imshow(uint8(j))
title('�Ҷ�ͼ��')


