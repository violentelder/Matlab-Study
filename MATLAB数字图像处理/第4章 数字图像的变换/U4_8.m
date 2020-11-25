clear
close all
%======������任����hadamard====
i = imread('peppers.png');
i = rgb2gray(i);
i = im2double(i);
%ͼ�����
h1 = size(i,1);
%ͼ�����
h2 = size(i,2);
%hadamard�任����
H1 = hadamard(h1);
H2 = hadamard(h2);
j =H1 *i * H2/sqrt(h1 * h2);

figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,2,2)
imshow(j)
title('hadamard�任')