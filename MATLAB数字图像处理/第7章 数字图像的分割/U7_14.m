clear
close all
%======基于像元的分割方法====
%基于L * a * b *空间的彩色分割
fabric = imread('fabric.png');
figure
subplot(1,2,1)
imshow(fabric)
title('原始图像')

%下载彩色区域坐标到工作目录
load regioncoordinates.mat
ncolors = 6;
sample_regions = false([size(fabric, 1) size(fabric, 2) ncolors]);
for count = 1:ncolors
    sample_regions(:,:,count) = roipoly(fabric, ...
        region_coordinates(:,1,count), ...
        region_coordinates(:,2,count));
end
subplot(1,2,2)
imshow(sample_regions(:,:,2))
title('红色区域样本')

%转换色彩空间到L * a * b *空间
cform = makecform('srgb2lab');
lab_fabric = applycform(fabric,cform);
a = lab_fabric(:,:,2);
b = lab_fabric(:,:,3);
color_makers = zeros(ncolors, 2);
for count = 1:ncolors
    color_makers(count,1) = mean2(a(sample_regions(:,:,count)));
    color_makers(count,2) = mean2(b(sample_regions(:,:,count)));
end
disp(sprintf('[%0.3f, %0.3f]', color_makers(2,1),...
    color_makers(2,2)));
color_labels = 0:ncolors-1;
a = double(a);
b = double(b);
distance = repmat(0, [size(a), ncolors]);
%初始化距离矩阵
for count = 1:ncolors
    distance(:,:,count) = ((a - color_makers(count, 1)).^2 + ...
        (b - color_makers(count, 2)).^2).^0.5;
end
%求出最小距离的颜色
[value, label] = min(distance, [], 3);
label = color_labels(label);
clear value distance;
rgb_label = repmat(label,[1,1,3]);
segmented_iamges = repmat(0, [size(fabric), ncolors]);
for count = 1:ncolors
    color = fabric;
    %不是标号颜色的像素置零
    color(rgb_label ~= color_labels(count)) = 0;
    segmented_iamges(:,:,:,count) = color;
end
figure
%显示背景
subplot(2,3,1)
imshow(segmented_iamges(:,:,:,1))
title('背景')
%显示红色目标
subplot(2,3,2)
imshow(segmented_iamges(:,:,:,2))
title('红色目标')
%显示绿色目标
subplot(2,3,3)
imshow(segmented_iamges(:,:,:,3))
title('绿色目标')
%显示紫色目标
subplot(2,3,4)
imshow(segmented_iamges(:,:,:,4))
title('紫色目标')
%显示红紫色目标
subplot(2,3,5)
imshow(segmented_iamges(:,:,:,5))
title('红紫色目标')
%显示黄色目标
subplot(2,3,6)
imshow(segmented_iamges(:,:,:,6))
title('黄色目标')