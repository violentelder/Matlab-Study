clear
close all
% =======imrotate实现图像旋转=====
a = imread('catherine.jpg');
j1 = imrotate(a,60);
j2 = imrotate(a,-30);
j3 = imrotate(a,60,'bicubic','crop');
j4 = imrotate(a,30,'bicubic','loose');

figure
subplot(2,2,1)
imshow(j1)
title('逆时针旋转60度')
subplot(2,2,2)
imshow(j2)
title('逆时针旋转30度')
subplot(2,2,3)
imshow(j3)
title('裁剪的旋转')
subplot(2,2,4)
imshow(j4)
title('不裁剪的旋转')