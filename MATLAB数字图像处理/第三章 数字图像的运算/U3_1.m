clear
close all
%=====���е�����===
a = imread('cameraman.tif');
subplot(2,3,1);
imshow(a);
title('origin image');
b1 = a + 45;
subplot(2,3,2);
imshow(b1);
title('�Ҷ�ֵ����');

b2 = 1.35 * a;
subplot(2,3,3);
imshow(b2);
title('�Աȶ�����');
b3 = 0.55 * a;
subplot(2,3,4);
imshow(b3);
title('�Աȶȼ���');
%=====��Ƭ====
b4 = -double(a) + 255;
subplot(2,3,5);
imshow(uint8(b4));
title('˫��������');

