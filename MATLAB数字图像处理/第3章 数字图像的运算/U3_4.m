clear
close all
%=======imadjust����ͼ��====
I = imread('pout.tif');
subplot(2,2,1)
imshow(I);
title('ԭʼͼ��');
%====�Աȶ���ǿ
J = imadjust(I);
subplot(2,2,2)
imshow(J);
title('�Աȶ���ǿ')
%====��������1
K = imadjust(I, [0.3,0.7], []);
subplot(2,2,3)
imshow(K);
title('ͼ�����')
%=====��������2
G = imadjust(I, [0.3,0.7],[0,1], 2);
subplot(2,2,4)
imshow(G);
title('ͼ��䰵')