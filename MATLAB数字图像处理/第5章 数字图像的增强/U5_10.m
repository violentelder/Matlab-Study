clear
close all
%======ͼ��ĵȸ���====
i = imread('onion.png');
j = rgb2gray(i);

figure
subplot(1,2,1)
imshow(j)
title('ԭʼͼ��')
subplot(1,2,2)
imcontour(j,3)
title('�ȸ���')