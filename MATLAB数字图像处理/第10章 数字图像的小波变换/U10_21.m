clear
close all
%========С������ͼ���ں�====
%=======����ͼ���ںϻָ�ģ��ͼ��====
load cathe_1.mat;
x1 = X;
load cathe_2.mat;
x2 = X;
% ����С���ֽ��ͼ���ں�
xfus = wfusimg(x1,x2,'sym4',5,'max','max');
figure
subplot(1,3,1)
imshow(x1,map);
title('ģ��ͼ1')
axis square
subplot(1,3,2)
imshow(x2,map);
title('ģ��ͼ2')
axis square
subplot(1,3,3)
imshow(xfus,map);
title('�ָ����ͼ��')
axis square
