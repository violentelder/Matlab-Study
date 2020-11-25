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
 n1 = 4;
 n2 = 8;
 
 %==��˲���==
 h1 = 1./(1 + (D1 ./ z) .^(2 * n1));
 h2 = 1./(1 + (D2 ./ z) .^(2 * n2));
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

 
 