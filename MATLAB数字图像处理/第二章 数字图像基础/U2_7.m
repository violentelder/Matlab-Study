clear
close all
%======RGB转换为NTSC=====
RGB = imread('wflower.jpg');
YIQ = rgb2ntsc(RGB);
subplot(2,3,1);
imshow(RGB);
title('RGB图像');
subplot(2,3,3);
imshow(mat2gray(YIQ));
title('NTSC图像');
subplot(2,3,4);
imshow(mat2gray(YIQ(:,:,1)));
title('Y分量');
subplot(2,3,5);
imshow(mat2gray(YIQ(:,:,2)));
title('Y分量');
subplot(2,3,6);
imshow(mat2gray(YIQ(:,:,3)));
title('Y分量');