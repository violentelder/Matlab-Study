clear
close all
%======��ˮ�뷨====
i = imread('cameraman.tif');
figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')


%�����ݶ�
i = double(i);
hv = fspecial('prewitt');
hh = hv.';
gv = abs(imfilter(i,hv,'replicate'));
gh = abs(imfilter(i,hh,'replicate'));
g = sqrt(gv.^2 + gh.^2);
%������뺯��
df = bwdist(i);
%�����ⲿԼ��
l = watershed(df);
em = l == 0;
%�����ڲ�Լ��
im = imextendedmax(i,20);
subplot(2,2,2)
imshow(im)
title('�����Լ��')
%�ع��ݶ�ͼ
g2 = imimposemin(g, im|em);
subplot(2,2,3)
imshow(g2)
title('�ع��ݶ�ͼ')
%watershed�㷨�ָ�
l2 = watershed(g2);
wr2 = l2 == 0;
i(wr2) = 255;
subplot(2,2,4)
imshow(uint8(i))
title('�ָ���')


