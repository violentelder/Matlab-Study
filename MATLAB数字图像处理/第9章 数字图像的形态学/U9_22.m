clear
close all
%========�߽�ⶨ====
%=======��ȡ�Ҷ�ͼ���Ե====
i = imread('rice.png');
se = strel('disk',1);
j = imdilate(i,se);
k = imerode(i,se);
l = j - k;

figure
subplot(1,2,1)
imshow(i);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(l);
title('ͼ��߽�')