clear
close all
%========最大值最小值====
%=======检测图像的谷点=====
mask = imread('glass.png');
figure
subplot(2,3,1)
imshow(mask);
title('原始图像')

% 创建标记图
maker = false(size(mask));
maker(65:70,65:70) = true;

% 选择区域
j = mask;
j(maker) = 255;
subplot(2,3,2)
imshow(j);
title('标记图像上叠加')

% 突出极小值
k = imimposemin(mask,maker);
subplot(2,3,3)
imshow(k);
title('突出极小值')

bw = imregionalmin(mask);
subplot(2,3,4)
imshow(bw);
title('原始图像局部极小值')

bw2 = imregionalmin(k);
subplot(2,3,5)
imshow(bw2);
title('处理后图像局部极小值')


