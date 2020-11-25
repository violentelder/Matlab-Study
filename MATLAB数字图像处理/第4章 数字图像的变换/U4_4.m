clear
close all
%======���˲����е�Ӧ��====
%======������˹��ͨ�˲���====
 i = imread('cameraman.tif');
 i = im2double(i);
 %����Ҷƽ����任
 j = fftshift(fft2(i));
 %������ɢ����
 [x,y] = meshgrid(-128:127, -128:127);
 z = sqrt(x .^ 2 + y .^ 2);
 %�˲����Ľ�ֹ
 D1 = 10; 
 D2 = 35;
 %�˲����Ľ���
 n = 6;
 
 %==��˲���==
 h1 = 1./(1 + (z/D1) .^(2 * n));
 h2 = 1./(1 + (z/D2) .^(2 * n));
 k1 = j .* h1;
 k2 = j .* h2;
 
 l1 = ifft2(ifftshift(k1));
 l2 = ifft2(ifftshift(k2));
 
figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(l1)
title('������˹��ͨ�˲��� 10hz')
subplot(1,3,3)
imshow(l2)
title('������˹��ͨ�˲��� 35hz')

 
 