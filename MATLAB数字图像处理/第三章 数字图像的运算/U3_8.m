clear
close all
%======imadd实现图像叠加===
I = imread('rice.png');
J = imread('cameraman.tif');
K = imadd(I, J, 'uint16');
figure
subplot(1,3,1)
imshow(I);
title('原始图像rice')
subplot(1,3,2)
imshow(J);
title('原始图像Camera man')
subplot(1,3,3)
%====imshow(I,[]) 显示灰度图像 I，根据 I 中的像素值范围对显示进行转换。
%====imshow 使用 [min(I(:)) max(I(:))] 作为显示范围。imshow 将 I 中的最小值显示为黑色，将最大值显示为白色
%====否则会全黑
imshow(K,[]);
title('叠加后')