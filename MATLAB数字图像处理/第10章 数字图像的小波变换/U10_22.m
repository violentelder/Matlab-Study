clear
close all
%========С������ͼ���ں�====
%=======�Զ����ں�====
load mask.mat;
A = X;
load bust.mat;
B = X;

% �����ںϹ���͵��õĺ�����
Fus_method = struct('name', 'userDEF', 'param', 'myfus_FUN');
C = wfusmat(A,B,Fus_method);
figure
colormap(pink(220))
subplot(1,3,1)
image(A);
title('ԭʼͼ��mask')
axis square
subplot(1,3,3)
image(B);
title('ԭʼͼ��mask')
axis square
subplot(1,3,2)
image(C);
title('�ںϺ��ͼ��')
axis square

