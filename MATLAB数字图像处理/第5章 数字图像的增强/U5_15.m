clear
close all
%======������====
i = imread('lena.jpg');
i = rgb2gray(i);
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')

i = double(i);
%������˹����
h = [0 1 0,1 -4 1,0 1 0];
j = conv2(i,h,'same');
%��ǿ��ͼ��Ϊԭʼͼ���ȥ������ͼ��
k = i-j;
subplot(1,2,2)
imshow(k)
title('���˲�����')

