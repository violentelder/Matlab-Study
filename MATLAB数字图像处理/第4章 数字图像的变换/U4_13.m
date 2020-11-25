clear
close all
%======Hougu±ä»»¼ì²âÖ±Ïß====
rgb =imread('gantrycrane.png');
i = rgb2gray(rgb);

%±ßÔµ¼ì²â
bw = edge(i,'canny');
[h,t,r] = hough(bw,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
figure
subplot(2,1,1)
imshow(rgb)
title('Ô­Ê¼Í¼Ïñ')
subplot(2,1,2)
imshow(imadjust(mat2gray(h)),'XData',t,'YData',r,'InitialMagnification','fit')
title('Hough±ä»»¼ì²âÍ¼Ïñ')
xlabel('\theta')
ylabel('\rho')
axis on
axis normal
hold on
colormap(hot)
colorbar



