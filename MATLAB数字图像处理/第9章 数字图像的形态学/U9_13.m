clear
close all
%========�߽���ȡ====
bw1 = imread('circbw.tif');
figure
subplot(2,2,1)
imshow(bw1);
title('ԭʼͼ��')

bw2 = bwmorph(bw1,'skel',Inf);
subplot(2,2,2)
imshow(bw2);
title('ԭʼͼ��ĹǼ�')

bw3 = bwperim(bw1);
subplot(2,2,3)
imshow(bw3);
title('ԭʼͼ��ı߽�')