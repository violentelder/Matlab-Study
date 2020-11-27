clear
close all
%======��˹�����˲�====
i = imread('coins.png');
i = im2double(i);
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')
i = imnoise(i,'gaussian',0,0.015);
subplot(2,2,2)
imshow(i)
title('������ͼ��')
m = 2 * size(i,1);
n = 2 * size(i,2);
u = - m/2 : (m/2-1);
v = - n/2 : (n/2-1);
[U,V] = meshgrid(u,v);
d = sqrt(U.^2 + V.^2);
d0 = 50;
w=30;
h1 = double(or(d <(d0 - w/2),d>d0+w/2));
%ʱ��ͼ��ת����Ƶ��
j1 = fftshift(fft2(i,size(h1,1),size(h1,2)));
k1 = j1.*h1;
%Ƶ��ͼ��ת��ΪʱƵ
l1 = ifft2(ifftshift(k1));
l1 = l1(1:size(i,1),1:size(i,2));
subplot(2,2,3)
imshow(l1)
title('��������˲���')


n=6;
h2 = 1./((1+((d .* w) ./(d.^2-d0.^2)).^(2*n)));
%ʱ��ͼ��ת����Ƶ��
j2 = fftshift(fft2(i,size(h2,1),size(h2,2)));
k2 = j2.*h2;
%Ƶ��ͼ��ת��ΪʱƵ
l2 = ifft2(ifftshift(k2));
l2 = l2(1:size(i,1),1:size(i,2));
subplot(2,2,4)
imshow(l2)
title('������˹�����˲���')