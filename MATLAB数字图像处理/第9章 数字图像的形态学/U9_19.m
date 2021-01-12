clear
close all
%========距离变换====
%=======对二维情况下不同距离函数求距离=====
bw = zeros(200,200);
bw(50,50) = 1;
bw(50,150) = 1;
bw(150,100) = 1;

d1 = bwdist(bw,'euclidean');
d2 = bwdist(bw,'cityblock');
d3 = bwdist(bw,'chessboard');
d4 = bwdist(bw,'quasi-euclidean');

figure
subplot(2,2,1)
imshow(mat2gray(d1))
title('欧式距离')
hold on
imcontour(d1)

subplot(2,2,2)
imshow(mat2gray(d2))
title('曼哈顿距离')
hold on
imcontour(d2)

subplot(2,2,3)
imshow(mat2gray(d3))
title('棋盘距离')
hold on
imcontour(d3)

subplot(2,2,4)
imshow(mat2gray(d4))
title('准欧式距离')
hold on
imcontour(d4)