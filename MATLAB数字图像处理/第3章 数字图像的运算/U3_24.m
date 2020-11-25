clear
close all
%===========图像复合变换======
i= imread('peppers.png');
i = rgb2gray(i);
figure
subplot(1,2,1)
imshow(i)
title('原始图像')
i = double(i);
b = zeros(size(i)) + 255;
h = size(i);
%右下平移变换
b(50 + 1:h(1), 50 + 1:h(2)) = i(1:h(1) - 50, 1:h(2) - 50);
%垂直镜像变换
c(1 : h(1), 1:h(2)) = b(h(1):-1:1, 1:h(2));
%旋转变换
d = imrotate(c, 30, 'nearest');
%比例变换
e = imresize(d, 0.25, 'nearest');
subplot(1,2,2)
imshow(e,[])
title('复合变换')