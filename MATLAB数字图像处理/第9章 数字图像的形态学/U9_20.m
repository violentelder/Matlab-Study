clear
close all
%========����任====
%=======����ά����²�ͬ���뺯�������=====
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
title('ŷʽ����')

subplot(2,2,2)
isosurface(d2,15)
axis equal
view(3)
camlight
lighting gouraud
title('�����پ���')

subplot(2,2,3)
isosurface(d3,15)
axis equal
view(3)
camlight
lighting gouraud
title('���̾���')

subplot(2,2,4)
isosurface(d4,15)
axis equal
view(3)
camlight
lighting gouraud
title('׼ŷʽ����')