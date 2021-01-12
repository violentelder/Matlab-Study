clear
close all
%========形态学滤波====
%=======高帽滤波=====
i = imread('rice.png');
figure
subplot(2,2,1)
imshow(i);
title('原始图像')

se = strel('disk', 12);
tophat = imtophat(i,se);
subplot(2,2,2)
imshow(tophat);
title('图像高帽滤波')

adjust = imadjust(i);
subplot(2,2,3)
imshow(adjust);
title('原始图像灰度调节')

tadjust = imadjust(tophat);
subplot(2,2,4)
imshow(tadjust);
title('高帽滤波后图像灰度调节')