clear
close all
%========���ֵ��Сֵ====
%=======ȷ��ͼ�������ֲ���Сֵ=====
mask = imread('glass.png');
figure
subplot(1,3,1)
imshow(mask);
title('ԭʼͼ��')

% �������ͼ
maker = false(size(mask));
maker(65:70,65:70) = true;

% ѡ������
j = mask;
j(maker) = 255;
subplot(1,3,2)
imshow(j);
title('���ͼ���ϵ���')

% ͻ����Сֵ
k = imimposemin(mask,maker);
subplot(1,3,3)
imshow(k);
title('ͻ����Сֵ')

