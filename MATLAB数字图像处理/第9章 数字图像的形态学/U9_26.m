clear
close all
%=======ͼ������bwarea=====
bw1 = imread('circbw.tif');
imshow(bw1);
title('ԭʼͼ��')

disp('����ǰͼ�����Ϊ��')
disp(bwarea(bw1))

se = ones(5);
bw2 = imdilate(bw1,se);
disp('���ͺ�ͼ�����Ϊ��')
disp(bwarea(bw2))