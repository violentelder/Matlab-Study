clear
close all
%======¶şÎ¬ÀëÉ¢ÓàÏÒ±ä»»¾ØÕóº¯Êıdctmtx====
i = imread('rice.png');
a = im2double(i);
d = dctmtx(size(a,1));
dct = d * a * d';

figure
subplot(1,2,1)
imshow(i)
title('Ô­Ê¼Í¼Ïñ')
subplot(1,2,2)
imshow(dct)
title('ÀëÉ¢ÓàÏÒ±ä»»¾ØÕó')
