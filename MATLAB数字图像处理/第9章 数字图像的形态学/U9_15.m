clear
close all
%========ͼ�����====
bw1 = imread('coins.png');
bw1 = imbinarize(bw1);
figure
subplot(2,2,1)
imshow(bw1);
title('ԭʼ��ֵͼ��')

bw2 = imfill(bw1,'holes');
subplot(2,2,2)
imshow(bw2);
title('��ֵͼ������')

i = imread('tire.tif');
i2 = imfill(i,'holes');
subplot(2,2,3)
imshow(i);
title('ԭʼ�Ҷ�ͼ��')
subplot(2,2,4)
imshow(i2);
title('�Ҷ�ͼ������')