clear
close all
%======Radon变换====
%======Radon反变换iradon====
%phantom产生一个头部幻影图像
p = phantom(128);
r = radon(p,0:179);
i1 = iradon(r,0:179);
i2 = iradon(r,0:179,'linear', 'none');

figure
subplot(1,3,1)
imshow(p)
title('原始图像')
subplot(1,3,2)
imshow(i1)
title('含线性滤波的radon反变换')
subplot(1,3,3)
imshow(i2,[])
title('不含线性滤波的radon反变换')