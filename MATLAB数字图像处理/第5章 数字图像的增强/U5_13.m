clear
close all
%======����Ӧ�˲���====
rgb = imread('saturn.png');
i = rgb2gray(rgb);
j = imnoise(i,'gaussian',0,0.025);
k = wiener2(j,[5 5]);

figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(j)
title('��˹����')
subplot(1,3,3)
imshow(k)
title('����Ӧ�˲�')