clear
close all
%=======imnoise��ӽ�������====
I = imread('eight.tif');
%=====imnoise(I,'salt & pepper',d)��dΪ�����ܶȣ�Ĭ��Ϊ0.05
J = imnoise(I, 'salt & pepper',0.04);
subplot(1,2,1)
imshow(I);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(J);
title('��ӽ���������ͼ��')

