clear
close all
%========ͼ��ƽ��=======
I = imread('lena.jpg');
%���������
figure
a = 90;
b = 90;
J1 = translation(I,a,b,1);
subplot(2,2,1)
imshow(J1)
axis on
title('����ƽ��ͼ��')
a = -90;
b = -90;
J2 = translation(I,a,b,1);
subplot(2,2,2)
imshow(J2)
axis on
title('����ƽ��ͼ��')
a = -90;
b = 90;
J3 = translation(I,a,b,1);
subplot(2,2,3)
imshow(J3)
axis on
title('����ƽ��ͼ��')
a = 90;
b = -90;
J4 = translation(I,a,b,1);
subplot(2,2,4)
imshow(J4)
axis on
title('����ƽ��ͼ��')

%�������
figure
a = 90;
b = 90;
J1 = translation(I,a,b,2);
subplot(2,2,1)
imshow(J1)
axis on
title('����ƽ��ͼ��')
a = -90;
b = -90;
J2 = translation(I,a,b,2);
subplot(2,2,2)
imshow(J2)
axis on
title('����ƽ��ͼ��')
a = -90;
b = 90;
J3 = translation(I,a,b,2);
subplot(2,2,3)
imshow(J3)
axis on
title('����ƽ��ͼ��')
a = 90;
b = -90;
J4 = translation(I,a,b,2);
subplot(2,2,4)
imshow(J4)
axis on
title('����ƽ��ͼ��')


