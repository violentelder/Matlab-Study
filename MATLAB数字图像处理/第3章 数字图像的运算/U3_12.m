clear
close all
%========imabsdiff����ͼ���������
I = imread('cameraman.tif');
J = uint8(filter2(fspecial('gaussian'),I));
K = imabsdiff(I,J);

figure
subplot(1,3,1)
imshow(I)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(J)
title('����ͼ��')
subplot(1,3,3)
imshow(K,[]);
title('ͼ�����')2.