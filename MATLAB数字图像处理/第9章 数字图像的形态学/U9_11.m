clear
close all
%========��̬ѧ�˲�====
%=======�ߵ�ñ�˲���ǿͼ��Աȶ�=====
i = imread('pout.tif');
figure
subplot(1,2,1)
imshow(i);
title('ԭʼͼ��')

se = strel('disk',3);
j = imsubtract(imadd(i,imtophat(i,se)),imbothat(i,se));
subplot(1,2,2)
imshow(j);
title('�ߵ�ñ�˲�')