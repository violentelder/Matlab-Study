clear
close all
% =======imrotateʵ��ͼ����ת=====
a = imread('catherine.jpg');
j1 = imrotate(a,60);
j2 = imrotate(a,-30);
j3 = imrotate(a,60,'bicubic','crop');
j4 = imrotate(a,30,'bicubic','loose');

figure
subplot(2,2,1)
imshow(j1)
title('��ʱ����ת60��')
subplot(2,2,2)
imshow(j2)
title('��ʱ����ת30��')
subplot(2,2,3)
imshow(j3)
title('�ü�����ת')
subplot(2,2,4)
imshow(j4)
title('���ü�����ת')