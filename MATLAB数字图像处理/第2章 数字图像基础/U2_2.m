clear
close all
%=====����ͼ��ת��Ϊ�Ҷ�ͼ��===
I = imread('rice.png');
[X1, map1] = gray2ind(I, 16);
X2 = grayslice(I, 8);
X3 = grayslice(I, 255 * [0 0.21 0.23 0.26 0.30 0.35 0.6 1.0]);
subplot(2,2,1);
imshow(I);
title('�Ҷ�ͼ');
subplot(2,2,2);
imshow(X1, map1);
title('16�Ҷȼ�ͼ');
subplot(2,2,3)
imshow(X2, hot(8));
title('��������ͼ');
subplot(2,2,4)
imshow(X3, jet(8));
title('�Ǿ�������ͼ');


