clear
close all
%======RGBת��ΪNTSC=====
RGB = imread('wflower.jpg');
YIQ = rgb2ntsc(RGB);
subplot(2,3,1);
imshow(RGB);
title('RGBͼ��');
subplot(2,3,3);
imshow(mat2gray(YIQ));
title('NTSCͼ��');
subplot(2,3,4);
imshow(mat2gray(YIQ(:,:,1)));
title('Y����');
subplot(2,3,5);
imshow(mat2gray(YIQ(:,:,2)));
title('Y����');
subplot(2,3,6);
imshow(mat2gray(YIQ(:,:,3)));
title('Y����');