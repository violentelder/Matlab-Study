clear
close all
%=========����imsubtract����ͼ�񱳾�
I = imread('rice.png');
background = imopen(I,strel('disk',15));
Ip = imsubtract(I,background);

figure
subplot(1,3,1)
imshow(I)
title('ԭʼͼ��');
subplot(1,3,2)
imshow(background);
title('����ͼ')
subplot(1,3,3)
imshow(Ip)
title('ȥ��������')