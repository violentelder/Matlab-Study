clear
close all
%========ʹ��colfiltʵ�ֿ���������=====
 i = im2double(imread('tire.tif'));
 f1 = @(x) ones(64,1) * mean(x);
 f2 = @(x) ones(64,1) * max(x);
 f3 = @(x) ones(64,1) * min(x);
 i1 = colfilt(i,[8 8], 'distinct', f1);
 i2 = colfilt(i,[8 8], 'distinct', f2);
 i3 = colfilt(i,[8 8], 'distinct', f3);
 
 figure
 subplot(2,2,1)
 imshow(i)
 title('ԭʼͼ��')
 subplot(2,2,2)
 imshow(i1)
 title('meanƽ��������')
 
 subplot(2,2,3)
 imshow(i2)
 title('max���ֵ����')
 
 subplot(2,2,4)
 imshow(i3)
 title('min��Сֵ����')
 
 
 