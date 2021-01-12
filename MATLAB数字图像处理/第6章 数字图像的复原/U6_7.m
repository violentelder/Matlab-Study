clear
close all
%========Í¼Ïñ±ßÔµÄ£ºýº¯Êýedgetaper====
i = imread('cameraman.tif');
figure
subplot(1,2,1)
imshow(i);
title('Ô­Ê¼Í¼Ïñ')

psf = fspecial('gaussian', 60, 10);
edgetapered = edgetaper(i, psf);
subplot(1,2,2)
imshow(edgetapered);
title('Ä£ºýÍ¼Ïñ±ßÔµ')