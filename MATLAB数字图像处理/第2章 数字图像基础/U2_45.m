clear
close all
%=====RGBת��ΪYCbCr===
RGB = imread('board.tif');
subplot(1,3,1);
imshow(RGB);
title('���ɫͼ��');
YCBCR = rgb2ycbcr(RGB);
subplot(1,3,2);
imshow(YCBCR);
title('YCbCrͼ��');
map = jet(256);
newmap = rgb2ycbcr(map);
subplot(1,3,3);
imshow(newmap);
title('YCbCrɫͼ');

figure(2)
rgb2 = ycbcr2rgb(YCBCR);
subplot(1,3,1);
imshow(RGB);
title('ԭʼ���ɫͼ��');
subplot(1,3,2);
imshow(YCBCR);
title('YCbCrͼ��');
subplot(1,3,3);
imshow(rgb2);
title('ת�����RGBͼ��');