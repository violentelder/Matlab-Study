clear
close all
%=======����ѡ��bwselect=====
bw1 = imread('text.png');
% ���������
c = [43,185,212];
% ���������
r = [36,68,181];

bw2 = bwselect(bw1,c,r,4);
figure
subplot(1,2,1)
imshow(bw1);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(bw2);
title('ͼ����')