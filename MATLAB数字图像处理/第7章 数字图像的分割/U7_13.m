clear
close all
%======����΢������====
i = imread('tire.tif');
figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')
%LOG����
bw1 = edge(i, 'log', 0.015);
subplot(1,3,2)
imshow(bw1)
title('LOG���ӱ�Ե���')
%Canny����
bw2 = edge(i, 'canny', 0.15);
subplot(1,3,3)
imshow(bw2)
title('canny���ӱ�Ե���')