clear
close all
%========��ֵͼ����������====
bw = imread('text.png');
se = strel('line',11,90);
bw2 = imdilate(bw, se);

figure
subplot(1,2,1)
imshow(bw);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(bw2);
title('ͼ������')

