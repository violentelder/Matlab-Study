clear
close all
%===========ͼ�񸴺ϱ任======
i= imread('peppers.png');
i = rgb2gray(i);
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')
i = double(i);
b = zeros(size(i)) + 255;
h = size(i);
%����ƽ�Ʊ任
b(50 + 1:h(1), 50 + 1:h(2)) = i(1:h(1) - 50, 1:h(2) - 50);
%��ֱ����任
c(1 : h(1), 1:h(2)) = b(h(1):-1:1, 1:h(2));
%��ת�任
d = imrotate(c, 30, 'nearest');
%�����任
e = imresize(d, 0.25, 'nearest');
subplot(1,2,2)
imshow(e,[])
title('���ϱ任')