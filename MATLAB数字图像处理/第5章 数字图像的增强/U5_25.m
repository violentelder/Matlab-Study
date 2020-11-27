clear
close all
%======��ͨ�˲�====
i = imread('coins.png');
i = im2double(i);
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')

m = 2 * size(i,1);
n = 2 * size(i,2);
u = - m/2 : (m/2-1);
v = - n/2 : (n/2-1);
[U,V] = meshgrid(u,v);
d = sqrt(U.^2 + V.^2);
d0 = 30;
n=6;
h2 = 1./(1+(d0./d).^(2*n));
%ʱ��ͼ��ת����Ƶ��
j2 = fftshift(fft2(i,size(h2,1),size(h2,2)));
k2 = j2.*h2;
%Ƶ��ͼ��ת��ΪʱƵ
l2 = ifft2(ifftshift(k2));
l2 = l2(1:size(i,1),1:size(i,2));
subplot(2,2,2)
imshow(l2)
title('������˹��ͨ�˲���')

h3 = 1-exp(-(d.^2)./(2*d0.^2));
%ʱ��ͼ��ת����Ƶ��
j3 = fftshift(fft2(i,size(h3,1),size(h3,2)));
k3 = j3.*h3;
%Ƶ��ͼ��ת��ΪʱƵ
l3 = ifft2(ifftshift(k3));
l3 = l3(1:size(i,1),1:size(i,2));
subplot(2,2,3)
imshow(l3)
title('��˹��ͨ�˲���')