clear
close all
%======Ƶ�ʳ�����====
[f1,f2] = freqspace(21,'meshgrid');
hd = ones(21);
r = sqrt(f1.^2 + f2.^2);
hd((r<0.1) | (r > 0.5)) = 0;
colormap(jet(64));
subplot(1,2,1)
mesh(f1,f2,hd);
title('�����˲�������Ƶ��')

h = fsamp2(hd);
subplot(1,2,2)
freqz2(h)
title('Ƶ�ʳ�����������Ƶ��')