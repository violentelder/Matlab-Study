clear
close all
%======��ά�����˲�====
%3��ħ������
x = magic(3);
%���ɳ���20���Ƕ�45��Ľ��������˲���
h = fspecial('motion',20,45);
%��ά�����˲�
y = filter2(h,x);

disp(y);