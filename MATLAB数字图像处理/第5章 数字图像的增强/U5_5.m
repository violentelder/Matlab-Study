clear
close all
%======sobel���ӱ�Ե����㷨====
%����ָ����������
s = [1,2,1;
    0,0,0;
    -1,-2,-1];
%ʹ�ö�ά��������A��͹��ļ�����ȡˮƽ��Ե
a = zeros(10);
a(3:7,3:7) = ones(5);
% conv�������ڶ�ά�������
h = conv2(a,s);

figure
mesh(h)
title('��ȡa��ˮƽ��Ե')

%��sת�����A�Ĵ�ֱ��Ե
v = conv2(a,s');
figure
mesh(v)
title('��ȡa�Ĵ�ֱ��Ե')

%���ˮƽ�ʹ�ֱ��Ե
figure
mesh(sqrt(h.^2 + v.^2))

