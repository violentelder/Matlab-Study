clear
close all
%========�߽�ⶨ====
%=======��ȡ��ֵͼ���Ե====
bw = imread('circles.png');
bw2 = bwperim(bw,8);
figure
subplot(1,2,1)
imshow(bw);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(bw2);
title('��Եͼ��')