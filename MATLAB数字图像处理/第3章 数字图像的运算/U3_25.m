clear
close all
%=========����nlfliterʵ�ֻ���������
a = imread('cameraman.tif');
a = im2double(a);
fun = @(x)median(x(:));
b = nlfilter(a, [3,3],fun);
figure
subplot(1,2,1)
imshow(a)
title('ԭʼͼ��')
subplot(1,2,2)
imshow(b)
title('����������')