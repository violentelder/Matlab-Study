clear
close all
%======��ֵ��====
i = imread('cell.tif');
figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')

%��ͼ����ɫ
ic = imcomplement(i);
%ת��Ϊ��ֵͼ��
bw = imbinarize(ic,graythresh(ic));
subplot(2,2,2)
imshow(bw)
title('��ֵ��ȡ�ָ��ͼ��')

%����һ���뾶Ϊ7�����ص�Բ���νṹԪ��
se = strel('disk',7);
%������
bw2 = imclose(bw,se);
%������
bw3 = imopen(bw2,se);
subplot(2,2,3)
imshow(bw3)
title('��Сͼ�����ɾ�����ͼ��')

mask = bw & bw3;
subplot(2,2,4)
imshow(mask)
title('���Ľ��')










