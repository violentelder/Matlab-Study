clear
close all
%======���ɫͼ��ת��=====
%==ת��Ϊ����ͼ��
RGB = imread('ngc6543a.jpg');
map = jet(256);
X = dither(RGB, map);
subplot(2,2,1);
imshow(RGB);
title('���ͼ');
subplot(2,2,2);
imshow(X, map);
title('����ͼ');
%==ת��Ϊ�Ҷ�ͼ��
I = rgb2gray(RGB);
subplot(2,2,3);
imshow(I);
title('�Ҷ�ͼ');
%==ת��Ϊ��ֵͼ��
BW = im2bw(RGB,0.5);
subplot(2,2,4);
imshow(BW);
title('��ֵͼ');


