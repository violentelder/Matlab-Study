clear
close all
%======Ƶ�ʱ任��====
colormap(jet(64));
b = remez(10,[0,0.05,0.15,0.55,0.65,1],[0 0 1 1 0 0]);
[h,w] = freqz(b,1,128,'whole');
subplot(1,2,1)
plot(w/pi -1,fftshift(abs(h)));
title('һά��ͨ')

h = ftrans2(b);
subplot(1,2,2)
freqz2(h)
title('��ά��ͨ')