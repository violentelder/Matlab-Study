clear
close all
%========histeqʵ��ֱ��ͼ���⻯====
I = imread('tire.tif');
J = histeq(I);
subplot(2,2,1)
imshow(I);
title('ԭʼͼ��')
subplot(2,2,2)
imshow(J);
title('ͼ����⻯')

subplot(2,2,3)
%====64����ֱ��ͼ��Ϊ64���Ҷȼ�
imhist(I,64);
title('ԭʼͼ��ֱ��ͼ');
subplot(2,2,4)
imhist(J);
title('ͼ����⻯��ֱ��ͼ')