clear
close all
%==========��imresizeʵ��ͼ�������======
i = imread('aeroblk_orville.jpg');
j = imresize(i,0.2);
figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��');
%����̨�ַ�����ʾ
disp('ͼ��Ŵ����ڽ���ֵ����ʱ�䣺')
%��ʱ����
tic
j1 = imresize(j,8,'nearest');
toc
subplot(2,2,2)
imshow(j1)
title('ͼ��Ŵ����ڽ���ֵ')

disp('ͼ��Ŵ�˫���Բ�ֵ����ʱ��:')
tic
j2 = imresize(j,8,'bilinear');
toc
subplot(2,2,3)
imshow(j2)
title('ͼ��Ŵ�˫���Բ�ֵ')

disp('ͼ��Ŵ�˫����������ʱ��:')
tic
j3 = imresize(j,8,'bicubic');
toc
subplot(2,2,4)
imshow(j3)
title('ͼ��Ŵ�˫������')


