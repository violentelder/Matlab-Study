clear
close all
%======��ֵ�˲���====
i = imread('eight.tif');
j = imnoise(i,'salt & pepper',0.15);
k = medfilt2(j);

figure
subplot(2,1,1)
imshow(i)
title('ԭʼͼ��')
subplot(2,1,2)
imshowpair(j,k,'montage')
title('��ֵ�˲�Ч��')

