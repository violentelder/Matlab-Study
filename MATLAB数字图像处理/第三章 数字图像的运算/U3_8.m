clear
close all
%======imaddʵ��ͼ�����===
I = imread('rice.png');
J = imread('cameraman.tif');
K = imadd(I, J, 'uint16');
figure
subplot(1,3,1)
imshow(I);
title('ԭʼͼ��rice')
subplot(1,3,2)
imshow(J);
title('ԭʼͼ��Camera man')
subplot(1,3,3)
%====imshow(I,[]) ��ʾ�Ҷ�ͼ�� I������ I �е�����ֵ��Χ����ʾ����ת����
%====imshow ʹ�� [min(I(:)) max(I(:))] ��Ϊ��ʾ��Χ��imshow �� I �е���Сֵ��ʾΪ��ɫ�������ֵ��ʾΪ��ɫ
%====�����ȫ��
imshow(K,[]);
title('���Ӻ�')