clear
close all
%========���ֵ��Сֵ====
%=======���ͼ��Ĺȵ�=====
mask = imread('glass.png');
figure
subplot(2,3,1)
imshow(mask);
title('ԭʼͼ��')

% �������ͼ
maker = false(size(mask));
maker(65:70,65:70) = true;

% ѡ������
j = mask;
j(maker) = 255;
subplot(2,3,2)
imshow(j);
title('���ͼ���ϵ���')

% ͻ����Сֵ
k = imimposemin(mask,maker);
subplot(2,3,3)
imshow(k);
title('ͻ����Сֵ')

bw = imregionalmin(mask);
subplot(2,3,4)
imshow(bw);
title('ԭʼͼ��ֲ���Сֵ')

bw2 = imregionalmin(k);
subplot(2,3,5)
imshow(bw2);
title('�����ͼ��ֲ���Сֵ')


