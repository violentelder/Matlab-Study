clear
close all
%=======ͼ�񵥲�С���ֽ�dwt2=====
load woman;
wname = 'sym4';
[ca, ch, cv, cd] = dwt2(X,wname,'mode','per');

figure
subplot(2,2,1)
imagesc(ca);
title('����ϵ��A1')
colormap gray;
subplot(2,2,2)
imagesc(ch);
title('ˮƽϸ�ڷ���H1')
subplot(2,2,3)
imagesc(cv);
title('��ֱϸ�ڷ���V1')
subplot(2,2,4)
imagesc(cd);
title('�Խ�ϸ�ڷ���D1')

figure
subplot(1,2,1)
imshow(X,map);
title('ԭʼͼ��')
subplot(1,2,2)
imshow([ca, ch; cv, cd])
title('С���任�������ͼ��')