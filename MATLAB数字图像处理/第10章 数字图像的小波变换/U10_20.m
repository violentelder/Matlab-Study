clear
close all
%========С������ͼ���ں�====
%=======����ͼ���ںϺ���wfusing====
load mask.mat;
x1 = X;
figure
subplot(2,2,1)
imshow(X,map);
title('ԭʼmaskͼ��')
axis square

load bust.mat;
x2 = X;
subplot(2,2,2)
imshow(X,map);
title('ԭʼbustͼ��')
axis square

% ʵ��ƽ���ں�
xfusmean = wfusimg(x1,x2,'db2',5,'mean','mean');
% ʵ�������Сֵ�ں�
wfusmaxmin = wfusimg(x1,x2,'db2',5,'max','min');

subplot(2,2,3)
imshow(xfusmean,map);
title('ͼ��ƽ���ں�')
axis square
subplot(2,2,4)
imshow(wfusmaxmin,map);
title('ͼ�������Сֵ�ں�')
axis square