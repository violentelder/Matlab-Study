clear
close all
%========С������ͼ��ѹ��====
%=======С���任������Ƶ����ʵ��ѹ��wcodemat====
load woman;
figure
subplot(1,3,1)
imshow(X,map);
title('ԭʼͼ��')

% colormap�ķ�Χ
nbcol = size(map,1);

% ����db1��ͼ����е����ά��ɢ�ֽ�
[ca1, ch1, cv1, cd1] = dwt2(X,'db1');
subplot(1,3,2)
imshow(ca1,map);
title('δ���ŵ�ͼ��')

% ��ͼ���������
cd = wcodemat(ca1,nbcol);
subplot(1,3,3)
imshow(cd,map);
title('���ŵ�ͼ��')