clear
close all
%=======����С����ͼ���ع�idwt2=====
load woman;
nbcol = size(map,1);
[ca1, ch1, cv1, cd1] = dwt2(X,'db1');
sx = size(X);
a0 = idwt2(ca1, ch1, cv1, cd1,'db4',sx);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0,'defaultFigurePosition',[100,100,1000,500]);
% �޸�ͼ�α�����ɫ������
set(0,'defaultFigureColor',[1,1,1]);

figure
subplot(1,3,1)
imshow(X,map);
title('ԭʼͼ��')
subplot(1,3,2)
imshow(uint8(a0));
title('�ع�ͼ��')
subplot(1,3,3)
imshow(uint8(X-a0));
title('����ͼ��')