clear
close all
%======动态阈值法====
%==Otsu法
i = imread('coins.png');
figure
subplot(1,2,1)
imshow(i)
title('原始图像')

bw = imbinarize(i,graythresh(getimage));
subplot(1,2,2)
imshow(bw)
title('Otsu法二值化结果')
bw2 = imfill(bw,'holes');
%get the properties of region
%Matlab中用来度量图像区域属性的函数
s = regionprops(bw2, 'centroid');
centroids = cat(1, s.Centroid);
%显示图像的重心
imtool(i)
hold(imgca, 'on')
plot(imgca, centroids(:,1), centroids(:,2),'r+')
hold(imgca, 'off')