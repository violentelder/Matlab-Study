clear
close all
%======分水岭法====
i = imread('cameraman.tif');
figure
subplot(2,2,1)
imshow(i)
title('原始图像')


%计算梯度
i = double(i);
hv = fspecial('prewitt');
hh = hv.';
gv = abs(imfilter(i,hv,'replicate'));
gh = abs(imfilter(i,hh,'replicate'));
g = sqrt(gv.^2 + gh.^2);
%计算距离函数
df = bwdist(i);
%计算外部约束
l = watershed(df);
em = l == 0;
%计算内部约束
im = imextendedmax(i,20);
subplot(2,2,2)
imshow(im)
title('标记内约束')
%重构梯度图
g2 = imimposemin(g, im|em);
subplot(2,2,3)
imshow(g2)
title('重构梯度图')
%watershed算法分割
l2 = watershed(g2);
wr2 = l2 == 0;
i(wr2) = 255;
subplot(2,2,4)
imshow(uint8(i))
title('分割结果')


