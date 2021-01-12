clear
close all
%========距离变换====
%=======对三维情况下不同距离函数求距离=====
bw = zeros(50,50,50);
bw(25,25,25) = 1;

d1 = bwdist(bw,'euclidean');
d2 = bwdist(bw,'cityblock');
d3 = bwdist(bw,'chessboard');
d4 = bwdist(bw,'quasi-euclidean');

figure
subplot(2,2,1)
isosurface(d1,15)
axis equal
view(3)
camlight
lighting gouraud
title('欧式距离')

subplot(2,2,2)
isosurface(d2,15)
axis equal
view(3)
camlight
lighting gouraud
title('曼哈顿距离')

subplot(2,2,3)
isosurface(d3,15)
axis equal
view(3)
camlight
lighting gouraud
title('棋盘距离')

subplot(2,2,4)
isosurface(d4,15)
axis equal
view(3)
camlight
lighting gouraud
title('准欧式距离')