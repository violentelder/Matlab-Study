clear
close all
%========ͼ�������====
i = imread('cameraman.tif');
i = im2double(i);
figure
subplot(1,2,1)
imshow(i);
title('ԭʼͼ��')
subplot(1,2,2)
imhist(i);
title('ԭʼͼ���ֱ��ͼ')

j=imnoise(i, 'gaussian', 0, 0.015);
figure
subplot(1,2,1)
imshow(j);
title('��Ӹ�˹����')
subplot(1,2,2)
imhist(j);
title('��Ӹ�˹������ֱ��ͼ')

j2=imnoise(i, 'salt & pepper', 0.015);
figure
subplot(1,2,1)
imshow(j2);
title('��ӽ�������')
subplot(1,2,2)
imhist(j2);
title('��ӽ���������ֱ��ͼ')

j3=imnoise(i, 'poisson');
figure
subplot(1,2,1)
imshow(j3);
title('��Ӳ�������')
subplot(1,2,2)
imhist(j3);
title('��Ӳ���������ֱ��ͼ')

j4=imnoise(i, 'speckle',0.15);
figure
subplot(1,2,1)
imshow(j4);
title('��ӳ�������')
subplot(1,2,2)
imhist(j4);
title('��ӳ���������ֱ��ͼ')





