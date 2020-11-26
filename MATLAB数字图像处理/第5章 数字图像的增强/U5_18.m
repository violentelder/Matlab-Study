clear
close all
%======非线性锐化====
[i,map] = imread('lena.jpg');
subplot(2,2,1)
imshow(i)
title('原始图像')

i = double(i);
[ix,iy] = gradient(i);
gm = sqrt(ix.*ix + iy.*iy);
out1 = gm;
subplot(2,2,2)
imshow(out1,map);
title('梯度值')

out2 = i;
j = find(gm >= 15);
out2(j) = gm(j);
subplot(2,2,3)
imshow(out2,map);
title('加阈值梯度值')

out3 = i;
j = find(gm >= 20);
out3(j) = 255;
k = find(gm < 20);
out3(k) = 0;
subplot(2,2,4)
imshow(out3,map)
title('二值化')
