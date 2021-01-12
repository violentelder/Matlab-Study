clear
close all
%========对灰度图像进行开闭运算====
bw = imread('lena.jpg');
bw = rgb2gray(bw);
figure
subplot(2,3,1)
imshow(bw);
title('原始图像')

bw1 = imnoise(bw, 'salt & pepper',0.02);
subplot(2,3,4)
imshow(bw1);
title('含噪图像')

s = ones(2,2);
bw2 = imopen(bw1,s);
subplot(2,3,2)
imshow(bw2);
title('开运算1')
bw3 = imclose(bw1,s);
subplot(2,3,3)
imshow(bw3);
title('闭运算1')

s1 = strel('diamond', 2);
bw4 = imopen(bw1,s1);
subplot(2,3,5)
imshow(bw4);
title('开运算2')
bw5 = imclose(bw1,s1);
subplot(2,3,6)
imshow(bw5);
title('闭运算2')