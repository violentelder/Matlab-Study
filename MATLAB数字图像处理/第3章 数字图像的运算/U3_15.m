clear
close all
%============interp2���в�ֵ�Ŵ�
I = imread('lena.jpg');
I = rgb2gray(I);
figure(1)
imshow(I)
I2 = imresize(I, 0.125);
figure
%====interp2ֻ���ܺڰ�ͼ������
%���ڽ���ֵ
z1 = interp2(double(I2),2,'nearest');
z1 = uint8(z1);
subplot(2,2,1)
imshow(z1)
title('���ڽ���ֵ')
                                 
%˫���Բ�ֵ
z2 = interp2(double(I2),2,'linear');
z2 = uint8(z2);
subplot(2,2,2)
imshow(z2)
title('˫���Բ�ֵ')

%����������ֵ
z3 = interp2(double(I2),2,'spline');
z3 = uint8(z3);
subplot(2,2,3)
imshow(z3)
title('����������ֵ')

%��������ֵ
z4 = interp2(double(I2),2,'cubic');
z4 = uint8(z4);
subplot(2,2,4)
imshow(z4)
title('��������ֵ')
