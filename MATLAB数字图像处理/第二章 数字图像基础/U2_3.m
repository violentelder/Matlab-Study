clear
close all
%=====���HSVͼ������===
%������ɫ���ߴ�Ϊ������
RGB = reshape(ones(64, 1) * reshape(jet(64), 1, 192), [64,64,3]);
HSV = rgb2hsv(RGB);
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
subplot(2,2,1);
imshow(RGB);
title('RGBͼ��');

subplot(2,2,2);
imshow(H);
title('Hͼ��');

subplot(2,2,3);
imshow(S);
title('Sͼ��');

subplot(2,2,4);
imshow(V);
title('Vͼ��');





