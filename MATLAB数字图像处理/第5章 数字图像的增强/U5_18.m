clear
close all
%======��������====
[i,map] = imread('lena.jpg');
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')

i = double(i);
[ix,iy] = gradient(i);
gm = sqrt(ix.*ix + iy.*iy);
out1 = gm;
subplot(2,2,2)
imshow(out1,map);
title('�ݶ�ֵ')

out2 = i;
j = find(gm >= 15);
out2(j) = gm(j);
subplot(2,2,3)
imshow(out2,map);
title('����ֵ�ݶ�ֵ')

out3 = i;
j = find(gm >= 20);
out3(j) = 255;
k = find(gm < 20);
out3(k) = 0;
subplot(2,2,4)
imshow(out3,map)
title('��ֵ��')
