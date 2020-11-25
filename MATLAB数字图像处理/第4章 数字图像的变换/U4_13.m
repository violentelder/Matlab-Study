clear
close all
%======Hougu�任���ֱ��====
rgb =imread('gantrycrane.png');
i = rgb2gray(rgb);

%��Ե���
bw = edge(i,'canny');
[h,t,r] = hough(bw,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
figure
subplot(2,1,1)
imshow(rgb)
title('ԭʼͼ��')
subplot(2,1,2)
imshow(imadjust(mat2gray(h)),'XData',t,'YData',r,'InitialMagnification','fit')
title('Hough�任���ͼ��')
xlabel('\theta')
ylabel('\rho')
axis on
axis normal
hold on
colormap(hot)
colorbar



