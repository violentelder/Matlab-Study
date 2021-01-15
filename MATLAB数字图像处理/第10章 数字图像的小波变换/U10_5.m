clear
close all
%=======图像单层小波分解dwt2=====
load woman;
wname = 'sym4';
[ca, ch, cv, cd] = dwt2(X,wname,'mode','per');

figure
subplot(2,2,1)
imagesc(ca);
title('近似系数A1')
colormap gray;
subplot(2,2,2)
imagesc(ch);
title('水平细节分量H1')
subplot(2,2,3)
imagesc(cv);
title('垂直细节分量V1')
subplot(2,2,4)
imagesc(cd);
title('对角细节分量D1')

figure
subplot(1,2,1)
imshow(X,map);
title('原始图像')
subplot(1,2,2)
imshow([ca, ch; cv, cd])
title('小波变换分量组合图像')