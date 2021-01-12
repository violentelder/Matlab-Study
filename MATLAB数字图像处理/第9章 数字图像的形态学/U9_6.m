clear
close all
%========»Ò¶ÈÍ¼Ïñ¸¯Ê´ÔËËã====
i = imread('cameraman.tif');
se = strel('ball', 5, 5);

i1 = imerode(i,se);
figure
subplot(1,2,1)
imshow(i);
title('Ô­Ê¼Í¼Ïñ')
subplot(1,2,2)
imshow(i1);
title('¸¯Ê´Í¼Ïñ')
