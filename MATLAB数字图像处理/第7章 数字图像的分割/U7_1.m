clear
close all
%======二值化====
i = imread('cell.tif');
figure
subplot(2,2,1)
imshow(i)
title('原始图像')

%对图像求反色
ic = imcomplement(i);
%转化为二值图像
bw = imbinarize(ic,graythresh(ic));
subplot(2,2,2)
imshow(bw)
title('阈值截取分割后图像')

%创建一个半径为7个像素的圆盘形结构元素
se = strel('disk',7);
%闭运算
bw2 = imclose(bw,se);
%开运算
bw3 = imopen(bw2,se);
subplot(2,2,3)
imshow(bw3)
title('对小图像进行删除后的图像')

mask = bw & bw3;
subplot(2,2,4)
imshow(mask)
title('检测的结果')










