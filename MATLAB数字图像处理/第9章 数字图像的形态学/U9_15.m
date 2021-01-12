clear
close all
%========图像填充====
bw1 = imread('coins.png');
bw1 = imbinarize(bw1);
figure
subplot(2,2,1)
imshow(bw1);
title('原始二值图像')

bw2 = imfill(bw1,'holes');
subplot(2,2,2)
imshow(bw2);
title('二值图像的填充')

i = imread('tire.tif');
i2 = imfill(i,'holes');
subplot(2,2,3)
imshow(i);
title('原始灰度图像')
subplot(2,2,4)
imshow(i2);
title('灰度图像的填充')