clear
close all
%======��������====
i = imread('eight.tif');
subplot(2,3,1)
imshow(i)
title('ԭʼͼ��')

j1 = imnoise(i,'gaussian',0.15);
subplot(2,3,2)
imshow(j1)
title('��˹����')

j2 = imnoise(i,'salt & pepper',0.15);
subplot(2,3,3)
imshow(j2)
title('��������')

j3 = imnoise(i,'poisson');
subplot(2,3,4)
imshow(j3)
title('��������')

j4 = imnoise(i,'speckle',0.15);
subplot(2,3,5)
imshow(j4)
title('�˷�����')
