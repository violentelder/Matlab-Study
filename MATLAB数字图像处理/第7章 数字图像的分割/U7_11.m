clear
close all
%======一阶微分算子====
i = imread('tire.tif');
figure
subplot(2,2,1)
imshow(i)
title('原始图像')

%sobel算子进行边缘检测
bw1 = edge(i,'sobel', 0.15);
subplot(2,2,2)
imshow(bw1)
title('sobel算子边缘检测')

%Robetrs算子进行边缘检测
bw2 = edge(i,'Roberts', 0.15);
subplot(2,2,3)
imshow(bw2)
title('Roberts算子边缘检测')

%Prewitt算子进行边缘检测
bw3 = edge(i,'Prewitt', 0.15);
subplot(2,2,4)
imshow(bw3)
title('Prewitt算子边缘检测')