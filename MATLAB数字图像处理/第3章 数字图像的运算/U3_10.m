clear
close all
%=======����imadd����ʵ��ʱ����������====
I = imread('eight.tif');
%==imnoise(I,'gaussian',m,var_gauss),mΪ������ֵ��vΪ����
J1 = imnoise(I,'gaussian',0, 0.006);
J2 = imnoise(I,'gaussian',0, 0.006);
J3 = imnoise(I,'gaussian',0, 0.006);
J4 = imnoise(I,'gaussian',0, 0.006);
%====�������
K = imlincomb(0.3,J1,0.3,J2,0.3,J3,0.3,J4);
figure
subplot(1,3,1)
imshow(I)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(J1)
title('��Ӹ�˹������')
subplot(1,3,3)
imshow(K,[])
title('����������')

