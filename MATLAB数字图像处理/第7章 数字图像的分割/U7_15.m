clear
close all
%======聚类算法====
%k均值算法
i = imread('hestain.png');
figure
subplot(2,3,1)
imshow(i)
title('原始图像')

%转换色彩空间到L * a * b *空间
cform = makecform('srgb2lab'); 
lab_i = applycform(i,cform);

%使用k均值聚类算法进行分类
ab = double(lab_i(:,:,2:3));
nrow = size(ab,1);
ncol = size(ab,2);
ab = reshape(ab, nrow * ncol, 2);
%重复聚类三次，避免局部最小值
ncolors = 3;
%使用k均值聚类算法得到的结果进行标记
[c_idx, c_center] = kmeans(ab, ncolors, 'distance', 'sqeuclidean', 'Replicates', 3);
pixel_labels = reshape(c_idx, nrow, ncol);
subplot(2,3,2)
imshow(pixel_labels,[])
title('使用簇索引对图像进行标记')
%元胞型数组
s_image = cell(1:3);
rgb_label = repmat(pixel_labels, [1,1,3]);
for k=1:ncolors
    color = i;
    color(rgb_label ~= k) = 0;
    s_image{k} = color;
end
subplot(2,3,3)
imshow(s_image{1})
title('簇1中的目标')
subplot(2,3,4)
imshow(s_image{2})
title('簇2中的目标')
subplot(2,3,5)
imshow(s_image{3})
title('簇3中的目标')
%分割细胞核得到一个分离图像
mean_c_value = mean(c_center, 2);
[tmp, idx] = sort(mean_c_value);
b_c_num = idx(1);
l = lab_i(:,:,1);
b_index = find(pixel_labels == b_c_num);
l_blue = l(b_index);
%二值化
i_1_b = im2bw(l_blue, graythresh(l_blue));
%使用亮蓝色标记数据蓝色细胞核的像素
n_labels = zeros(nrow, ncol);
n_labels(b_index(i_1_b == false)) = 1;
n_labels = repmat(i_1_b, [1,1,3]);
b_n = i;
b_n(n_labels ~= 1) = 1;
subplot(2,3,6)
imshow(b_n)
title('使用簇索引对图像进行标记')
