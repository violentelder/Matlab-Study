clear
close all
%==========用imresize实现图像的缩放======
i = imread('aeroblk_orville.jpg');
j = imresize(i,0.2);
figure
subplot(2,2,1)
imshow(i)
title('原始图像');
%控制台字符串显示
disp('图像放大，最邻近差值运算时间：')
%计时函数
tic
j1 = imresize(j,8,'nearest');
toc
subplot(2,2,2)
imshow(j1)
title('图像放大，最邻近差值')

disp('图像放大，双线性差值运算时间:')
tic
j2 = imresize(j,8,'bilinear');
toc
subplot(2,2,3)
imshow(j2)
title('图像放大，双线性差值')

disp('图像放大，双立方法运算时间:')
tic
j3 = imresize(j,8,'bicubic');
toc
subplot(2,2,4)
imshow(j3)
title('图像放大，双立方法')


