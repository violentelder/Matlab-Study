clear
close all
%======���ɫ�˲�====
i = imread('peppers.png');
h = ones(5,5)/25;
i2 = imfilter(i,h);
i3 = imfilter(i,h,'symmetric');

figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(i2)
title('��ֵ�˲�')
subplot(1,3,3)
imshow(i3)
title('����������˲�')
