clear
close all
%=========immultiplyʵ��ͼ��ĳ˷�
I = imread('wflower.jpg');
I16 = uint16(I);
J = immultiply(I16, I16);
J2 = immultiply(I, 0.65);
figure
subplot(2,2,1)
imshow(I)
title('ԭʼͼ��')
subplot(2,2,2)
imshow(J)
title('ͼ������˽��')
subplot(2,2,3)
imshow(J2)
title('ͼ���볣�����')