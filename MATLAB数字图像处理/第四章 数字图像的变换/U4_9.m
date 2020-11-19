clear
close all
%======Radon�任====
%======����ԭ������radon====
iptsetpref('ImshowAxesVisible','on');
i = zeros(100,100);
i(25:75, 25:75) = 1;
theta = 0 : 180;
%��0-180�ȵ�radon�任
[R,xp] = radon(i,theta);
figure(1)
imshow(i)

figure(2)
imshow(R,[],'Xdata', theta,'Ydata',xp,'InitialMagnification','fit')
xlabel('\theta(degrees)')
ylabel('x''')
colormap(hot),colorbar
iptsetpref('ImshowAxesVisible','off');
