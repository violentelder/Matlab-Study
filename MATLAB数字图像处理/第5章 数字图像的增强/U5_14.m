clear
close all
%======�����˲�====
i = imread('circuit.tif');
b = ordfilt2(i,25,true(5));
j = imnoise(i,'gaussian',0,0.025);
c = ordfilt2(j,25,true(5));

figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(2,2,2)
imshow(b)
title('�����˲�')
subplot(2,2,3)
imshow(j)
title('��˹����')
subplot(2,2,4)
imshow(c)
title('���������˲�')