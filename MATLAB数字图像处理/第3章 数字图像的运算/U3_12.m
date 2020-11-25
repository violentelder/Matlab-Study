clear
close all
%========imabsdiff进行图像减法运算
I = imread('cameraman.tif');
J = uint8(filter2(fspecial('gaussian'),I));
K = imabsdiff(I,J);

figure
subplot(1,3,1)
imshow(I)
title('原始图像')
subplot(1,3,2)
imshow(J)
title('噪声图像')
subplot(1,3,3)
imshow(K,[]);
title('图像相减')2.