clear
close all
%======ʵ��ͼ��ĸ���Ҷ�任====
i = imread('cameraman.tif');
j = fft2(i);
k = ifft2(j)/255;
figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(j)
title('����Ҷ�任���ͼ��')
subplot(1,3,3)
imshow(k)
title('��任���ͼ��')