clear
close all
%========С������ͼ��ȥ��====
%=======���ò�ͬ��ֵ��ͼ��ȥ��====
load facets
figure
subplot(2,2,1)
image(X);
colormap(map)
axis square
title('ԭʼͼ��')

% ����������ͼ��
init = 2055615866;
rng(init);
x = X + 50 * randn(size(X));
subplot(2,2,2)
image(x);
colormap(map)
axis square
title('����ͼ��ͼ��')

% ����ͼ��Ľ��봦��
[c,s] = wavedec2(x,2,'coif3');
% ��ȡС���ֽ��еĵ�һ��ĵ�Ƶͼ��ʵ�ֵ�ͨ�˲�ȥ��
% ���ó߶�����n
n = [1,2];
% ������ֵ����
p = [10.12,23.28];
% �����������Ƶϵ��������ֵ����
nc = wthcoef2('h',c,s,n,p,'s');
nc = wthcoef2('v',c,s,n,p,'s');
nc = wthcoef2('d',c,s,n,p,'s');
% �Ե��µ�С���ֽ�ṹ[nc,s]�����ع�
x1 = waverec2(nc,s,'coif3');
subplot(2,2,3)
image(x1);
colormap(map)
axis square
title('��һ��ȥ����ͼ��')

xx = wthcoef2('v',nc,s,n,p,'s');
x2 = waverec2(xx,s,'coif2');
subplot(2,2,4)
image(x2);
colormap(map)
axis square
title('�ڶ���ȥ����ͼ��')

