clear
close all
%=======imdivideʵ��ͼ��ĳ�������
I = imread('office_1.jpg');
J = imread('office_2.jpg');
Ip = imdivide(J,I);
K = imdivide(J, 0.45);

figure
subplot(2,2,1)
imshow(I)
title('office1')
subplot(2,2,2)
imshow(J)
title('office2')
subplot(2,2,3)
imshow(Ip)
title('����ͼ�����')
subplot(2,2,4)
imshow(K)
title('ͼ���볣�����')
