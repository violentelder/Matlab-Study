clear
close all
%========�߽���ȡ====
bw1 = imread('circbw.tif');
figure
subplot(1,2,1)
imshow(bw1);
title('ԭʼͼ��')

interval = [0,-1,-1; 1,1,-1; 0,1,0];
bw2 = bwhitmiss(bw1, interval);
subplot(1,2,2)
imshow(bw2);
title('���л������')