clear
close all
%========�Ҷ�ͼ����������====
i = imread('cameraman.tif');
% ͼ��ȡ��
i1 = 256 - i;
% �������νṹԪ��
se = strel('ball', 5, 5);
i2 = imdilate(i,se);
i3 = imdilate(i1,se);
% �����͵�ͼ�����ȡ��
i4 = 256 - i3;

figure
subplot(2,2,1)
imshow(i);
title('ԭʼͼ��')
subplot(2,2,2)
imshow(i1);
title('ȡ��ͼ��')
subplot(2,2,3)
imshow(i2);
title('ԭʼͼ������')
subplot(2,2,4)
imshow(i3);
title('ȡ��ͼ������')

figure
imshow(i4);
title('�����͵�ͼ�����ȡ��')

