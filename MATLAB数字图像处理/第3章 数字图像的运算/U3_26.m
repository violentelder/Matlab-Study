clear
close all
%======利用blkproc实现分离块操作
i = imread('tire.tif');
fun = inline('std2(x) * ones(size(x))');
i1 = blkproc(i, [2,2], [2,2], fun);
i2 = blkproc(i, [2,2], fun);
i3 = blkproc(i, [5,5], fun);
blockproc
figure
subplot(2,2,1)
imshow(i)
title('原始图像')
subplot(2,2,2)
imshow(i1)
title('指定扩展边界图像')

subplot(2,2,3)
imshow(i2)
title('不指定扩展边界图像')

subplot(2,2,4)
imshow(i3)
title('划分为5 x 5')

