clear
close all
%======��ά��ɢ���ұ任������dctmtx====
i = imread('rice.png');
a = im2double(i);
d = dctmtx(size(a,1));
dct = d * a * d';

figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,2,2)
imshow(dct)
title('��ɢ���ұ任����')
