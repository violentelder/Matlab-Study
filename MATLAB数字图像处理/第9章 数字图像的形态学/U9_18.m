clear
close all
%========����任====
%=======��ͼ��ʵ�ֲ�ͬ�ľ���任=====
i = imread('flower.jpg');
i = rgb2gray(i);
figure
subplot(2,3,1)
imshow(i);
title('ԭʼͼ��')

threshold = 160;
f = i > threshold;
subplot(2,3,4)
imshow(f,[]);
title('��ֵͼ��')

t = bwdist(f,'chessboard');
subplot(2,3,2)
imshow(t,[]);
title('���̾���')
t2 = bwdist(f,'cityblock');
subplot(2,3,3)
imshow(t2,[]);
title('�����پ���')
t3 = bwdist(f,'euclidean');
subplot(2,3,5)
imshow(t3,[]);
title('ŷʽ����')
t4 = bwdist(f,'quasi-euclidean');
subplot(2,3,6)
imshow(t4,[]);
title('׼ŷʽ����')