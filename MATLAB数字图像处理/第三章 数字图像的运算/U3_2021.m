clear
close all
%==========����imcropʵ��ͼ��Ĳü�
i = imread('cat.jpg');
j2 = imcrop(i,[156 10 263 103]);
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,2,2)
imshow(j2)
title('�ü�ͼ��')

%=======ʵ���ֶ��ü�ͼ��
[I,map] = imread('cat.jpg');
figure(2)
imshow(I,map)
i2 = imcrop;
figure(3)
imshow(i2)
