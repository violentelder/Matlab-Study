clear
close all
%========�Ҷ�ͼ��ʴ����====
i = imread('cameraman.tif');
se = strel('ball', 5, 5);

i1 = imerode(i,se);
figure
subplot(1,2,1)
imshow(i);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(i1);
title('��ʴͼ��')
