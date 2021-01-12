clear
close all
%========距离变换====
%=======对图像实现不同的距离变换=====
i = imread('flower.jpg');
i = rgb2gray(i);
figure
subplot(2,3,1)
imshow(i);
title('原始图像')

threshold = 160;
f = i > threshold;
subplot(2,3,4)
imshow(f,[]);
title('二值图像')

t = bwdist(f,'chessboard');
subplot(2,3,2)
imshow(t,[]);
title('棋盘距离')
t2 = bwdist(f,'cityblock');
subplot(2,3,3)
imshow(t2,[]);
title('曼哈顿距离')
t3 = bwdist(f,'euclidean');
subplot(2,3,5)
imshow(t3,[]);
title('欧式距离')
t4 = bwdist(f,'quasi-euclidean');
subplot(2,3,6)
imshow(t4,[]);
title('准欧式距离')