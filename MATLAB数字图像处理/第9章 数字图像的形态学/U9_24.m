clear
close all
%========������makelut��applylut====

% ������������
lutfun = @(x)(sum(x(:)) == 4);
% �������ұ�
lut = makelut(lutfun,2);
bw1 = imread('text.png');
% Ӧ�ò��ұ�bwlookup = applylut
bw2 = bwlookup(bw1,lut);

figure
subplot(1,2,1)
imshow(bw1);
title('ԭʼͼ��')
subplot(1,2,2)
imshow(bw2);
title('���޸�ʴ')