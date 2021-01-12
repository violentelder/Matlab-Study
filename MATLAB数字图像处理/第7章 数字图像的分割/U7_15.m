clear
close all
%======�����㷨====
%k��ֵ�㷨
i = imread('hestain.png');
figure
subplot(2,3,1)
imshow(i)
title('ԭʼͼ��')

%ת��ɫ�ʿռ䵽L * a * b *�ռ�
cform = makecform('srgb2lab'); 
lab_i = applycform(i,cform);

%ʹ��k��ֵ�����㷨���з���
ab = double(lab_i(:,:,2:3));
nrow = size(ab,1);
ncol = size(ab,2);
ab = reshape(ab, nrow * ncol, 2);
%�ظ��������Σ�����ֲ���Сֵ
ncolors = 3;
%ʹ��k��ֵ�����㷨�õ��Ľ�����б��
[c_idx, c_center] = kmeans(ab, ncolors, 'distance', 'sqeuclidean', 'Replicates', 3);
pixel_labels = reshape(c_idx, nrow, ncol);
subplot(2,3,2)
imshow(pixel_labels,[])
title('ʹ�ô�������ͼ����б��')
%Ԫ��������
s_image = cell(1:3);
rgb_label = repmat(pixel_labels, [1,1,3]);
for k=1:ncolors
    color = i;
    color(rgb_label ~= k) = 0;
    s_image{k} = color;
end
subplot(2,3,3)
imshow(s_image{1})
title('��1�е�Ŀ��')
subplot(2,3,4)
imshow(s_image{2})
title('��2�е�Ŀ��')
subplot(2,3,5)
imshow(s_image{3})
title('��3�е�Ŀ��')
%�ָ�ϸ���˵õ�һ������ͼ��
mean_c_value = mean(c_center, 2);
[tmp, idx] = sort(mean_c_value);
b_c_num = idx(1);
l = lab_i(:,:,1);
b_index = find(pixel_labels == b_c_num);
l_blue = l(b_index);
%��ֵ��
i_1_b = im2bw(l_blue, graythresh(l_blue));
%ʹ������ɫ���������ɫϸ���˵�����
n_labels = zeros(nrow, ncol);
n_labels(b_index(i_1_b == false)) = 1;
n_labels = repmat(i_1_b, [1,1,3]);
b_n = i;
b_n(n_labels ~= 1) = 1;
subplot(2,3,6)
imshow(b_n)
title('ʹ�ô�������ͼ����б��')
