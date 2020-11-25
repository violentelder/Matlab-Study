clear
close all
%======Hougu变换计算图像峰值====
rgb = imread('gantrycrane.png');
i = rgb2gray(rgb);
bw = edge(i,'canny');
[h,t,r] = hough(bw,'Theta',44:0.5:46);
figure
subplot(2,1,1)
imshow(i)
title('原始图像')
subplot(2,1,2)
imshow(imadjust(mat2gray(h)),'XData',t,'YData',r,'InitialMagnification','fit')
title('Hough变换标出峰值')
xlabel('\theta')
ylabel('\rho')
axis on
axis normal
hold on
colormap(hot)
colorbar
