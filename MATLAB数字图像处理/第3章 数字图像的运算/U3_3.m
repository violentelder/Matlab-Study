clear
close all
%=======�����Ա任====
R = imread('peppers.png');
G = rgb2gray(R);
J = double(G);
H = (log(J + 1)) / 10;

figure
subplot(1,2,1)
imshow(G);
title('�Ҷ�ͼ��');
subplot(1,2,2)
imshow(H);
title('�����Ա任ͼ��');
