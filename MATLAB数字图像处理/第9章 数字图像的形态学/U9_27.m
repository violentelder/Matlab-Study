clear
close all
%=======ͼ���ŷ����bweular=====
% �Ҷ�ͼ��
i = imread('circles.png');
% ��ֵͼ��
j = imread('circbw.tif');

disp('�Ҷ�ͼ���ŷ������')
disp(bweuler(i,8))

disp('��ֵͼ���ŷ������')
disp(bweuler(j,8))