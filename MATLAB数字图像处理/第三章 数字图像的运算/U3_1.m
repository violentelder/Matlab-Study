clear
close all
%=====先行点运算===
a = imread('cameraman.tif');
subplot(2,3,1);
imshow(a);
title('origin image');
b1 = a + 45;
subplot(2,3,2);
imshow(b1);
title('灰度值增加');

b2 = 1.35 * a;
subplot(2,3,3);
imshow(b2);
title('对比度增加');
b3 = 0.55 * a;
subplot(2,3,4);
imshow(b3);
title('对比度减少');
%=====负片====
b4 = -double(a) + 255;
subplot(2,3,5);
imshow(uint8(b4));
title('双精度类型');

