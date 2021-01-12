clear
close all
%========����任====
%=======�Զ�ά����²�ͬ���뺯�������=====
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
title('ŷʽ����')
hold on
imcontour(d1)

subplot(2,2,2)
imshow(mat2gray(d2))
title('�����پ���')
hold on
imcontour(d2)

subplot(2,2,3)
imshow(mat2gray(d3))
title('���̾���')
hold on
imcontour(d3)

subplot(2,2,4)
imshow(mat2gray(d4))
title('׼ŷʽ����')
hold on
imcontour(d4)