clear
close all
%======����blkprocʵ�ַ�������
i = imread('tire.tif');
fun = inline('std2(x) * ones(size(x))');
i1 = blkproc(i, [2,2], [2,2], fun);
i2 = blkproc(i, [2,2], fun);
i3 = blkproc(i, [5,5], fun);
blockproc
figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')
subplot(2,2,2)
imshow(i1)
title('ָ����չ�߽�ͼ��')

subplot(2,2,3)
imshow(i2)
title('��ָ����չ�߽�ͼ��')

subplot(2,2,4)
imshow(i3)
title('����Ϊ5 x 5')

