clear
close all
%====ֱ��ͼ====
I = imread('pout.tif');
subplot(1,2,1)
imshow(I);
title('ԭʼͼ��');
subplot(1,2,2)
imhist(I);
title('�Ҷ�ֱ��ͼ')
