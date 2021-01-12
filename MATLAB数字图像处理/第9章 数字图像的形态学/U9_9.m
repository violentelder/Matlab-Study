clear
close all
%========形态学重构====
f = imread('baboon.jpg');
figure
subplot(1,3,1)
imshow(f);
title('原始图像')

s = ones(3);
f1 = imerode(f,s);
f2 = imreconstruct(f1,f);
subplot(1,3,2)
imshow(f2);
title('重构开运算')

f3 = imopen(f,s);
subplot(1,3,3)
imshow(f3);
title('开运算')
