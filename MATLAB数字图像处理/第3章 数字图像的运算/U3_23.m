clear
close all
%========ͼ��ľ���任========
i = imread('woodstatue.jpg');
i = rgb2gray(i);
figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')

i = double(i);
h = size(i);
i2(1:h(1),1:h(2)) = i(h(1):-1:1, 1:h(2));
subplot(2,2,2)
imshow(uint8(i2))
title('��ֱ����任')

i3(1:h(1),1:h(2)) = i(1:h(1), h(2):-1:1);
subplot(2,2,3)
imshow(uint8(i3))
title('ˮƽ����任')

i4(1:h(1),1:h(2)) = i(h(1) : -1 : 1, h(2):-1:1);
subplot(2,2,4)
imshow(uint8(i4))
title('�ԽǾ���')