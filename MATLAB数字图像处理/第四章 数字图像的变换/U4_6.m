clear
close all
%======一维离散余弦变换函数dct及反变换idct====
RGB = imread('autumn.tif');
 i = rgb2gray(RGB);
 j = dct2(i);
 figure
 imshow(log(abs(j)), [])
 colormap(jet(64)), colorbar
 title('离线余弦变换系数')
 
 j(abs(j) < 10) = 0;
 k = idct2(j);
 figure(2)
 subplot(1,2,1)
 imshow(i)
 title('原始图像')
 subplot(1,2,2)
 imshow(k,[0 255])
 title('离散余弦反变换')