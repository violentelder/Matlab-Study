clear
close all
%=======����С����ͼ���ع�idwt2=====
load woman;
[c,s] = wavedec2(X,2,'sym4');
a0 = waverec2(c,s,'sym4');
figure
subplot(1,2,1)
imshow(X,map);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(uint8(a0));
title('�ع�ͼ��')

disp(max(max(abs(X-a0))));