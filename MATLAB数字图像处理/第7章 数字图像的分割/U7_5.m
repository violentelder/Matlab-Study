clear
close all
%======��̬��ֵ��====
%==Otsu��
i = imread('coins.png');
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')

bw = imbinarize(i,graythresh(getimage));
subplot(1,2,2)
imshow(bw)
title('Otsu����ֵ�����')
bw2 = imfill(bw,'holes');
%get the properties of region
%Matlab����������ͼ���������Եĺ���
s = regionprops(bw2, 'centroid');
centroids = cat(1, s.Centroid);
%��ʾͼ�������
imtool(i)
hold(imgca, 'on')
plot(imgca, centroids(:,1), centroids(:,2),'r+')
hold(imgca, 'off')