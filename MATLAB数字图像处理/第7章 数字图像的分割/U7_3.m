clear
close all
%======˫�巨====
i = imread('pout.tif');
figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,3,2)
imhist(i)
title('ֱ��ͼ')

%����ֱ��ͼѡ����ֵΪ120������ǰ���ͺ�
newi = imbinarize(i,120/255);
subplot(1,3,3)
imshow(newi)
title('˫�巨�ָ�ͼ��')
