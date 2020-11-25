clear
close all
%============interp2进行插值放大
I = imread('lena.jpg');
I = rgb2gray(I);
figure(1)
imshow(I)
I2 = imresize(I, 0.125);
figure
%====interp2只接受黑白图像输入
%最邻近插值
z1 = interp2(double(I2),2,'nearest');
z1 = uint8(z1);
subplot(2,2,1)
imshow(z1)
title('最邻近插值')
                                 
%双线性插值
z2 = interp2(double(I2),2,'linear');
z2 = uint8(z2);
subplot(2,2,2)
imshow(z2)
title('双线性插值')

%三次样条插值
z3 = interp2(double(I2),2,'spline');
z3 = uint8(z3);
subplot(2,2,3)
imshow(z3)
title('三次样条插值')

%立方法插值
z4 = interp2(double(I2),2,'cubic');
z4 = uint8(z4);
subplot(2,2,4)
imshow(z4)
title('立方法插值')
