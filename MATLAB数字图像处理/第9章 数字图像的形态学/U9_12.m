clear
close all
%========�Ǽ���ȡ====
i = imread('circles.png');
figure
subplot(1,3,1)
imshow(i);
title('ԭʼͼ��')

% ��ͼ�����remove��̬ѧ�������Ƴ��ڲ�����
i2 = bwmorph(i,'remove');
subplot(1,3,2)
imshow(i2);
title('remove��̬ѧͼ��')

% ��ͼ�����skel��̬ѧ������Ŀ���Ե�����ص㣬��������Ŀ��
i3 = bwmorph(i,'skel',Inf);
subplot(1,3,3)
imshow(i3);
title('skel��̬ѧͼ��')