clear
close all
%========��ͨ������bwlabel====
bw = imread('rice.png');
bw1 = imbinarize(bw);
l = bwlabel(bw1);
rgb = label2rgb(l);
figure
subplot(1,2,1)
imshow(bw1);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(rgb);
title('ͼ����')