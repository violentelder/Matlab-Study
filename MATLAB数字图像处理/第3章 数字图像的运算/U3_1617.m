clear
close all
%========图像平移=======
I = imread('lena.jpg');
%不考虑溢出
figure
a = 90;
b = 90;
J1 = translation(I,a,b,1);
subplot(2,2,1)
imshow(J1)
axis on
title('右下平移图像')
a = -90;
b = -90;
J2 = translation(I,a,b,1);
subplot(2,2,2)
imshow(J2)
axis on
title('左上平移图像')
a = -90;
b = 90;
J3 = translation(I,a,b,1);
subplot(2,2,3)
imshow(J3)
axis on
title('右上平移图像')
a = 90;
b = -90;
J4 = translation(I,a,b,1);
subplot(2,2,4)
imshow(J4)
axis on
title('左下平移图像')

%考虑溢出
figure
a = 90;
b = 90;
J1 = translation(I,a,b,2);
subplot(2,2,1)
imshow(J1)
axis on
title('右下平移图像')
a = -90;
b = -90;
J2 = translation(I,a,b,2);
subplot(2,2,2)
imshow(J2)
axis on
title('左上平移图像')
a = -90;
b = 90;
J3 = translation(I,a,b,2);
subplot(2,2,3)
imshow(J3)
axis on
title('右上平移图像')
a = 90;
b = -90;
J4 = translation(I,a,b,2);
subplot(2,2,4)
imshow(J4)
axis on
title('左下平移图像')


