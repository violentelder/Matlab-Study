clear
close all
%========ͼ���Եģ������edgetaper====
i = imread('cameraman.tif');
figure
subplot(1,2,1)
imshow(i);
title('ԭʼͼ��')

psf = fspecial('gaussian', 60, 10);
edgetapered = edgetaper(i, psf);
subplot(1,2,2)
imshow(edgetapered);
title('ģ��ͼ���Ե')