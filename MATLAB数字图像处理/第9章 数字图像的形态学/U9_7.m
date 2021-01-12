clear
close all
%========¶şÖµÍ¼ÏñÅòÕÍ&¸¯Ê´ÔËËã====
se = strel('rectangle', [40,30]);
bw1 = imread('circbw.tif');
bw2 = imerode(bw1,se);
bw3 = imdilate(bw2,se);

figure
subplot(1,3,1)
imshow(bw1);
title('Ô­Ê¼Í¼Ïñ')
subplot(1,3,2)
imshow(bw2);
title('¸¯Ê´Í¼Ïñ')
subplot(1,3,3)
imshow(bw3);
title('ÅòÕÍÍ¼Ïñ')