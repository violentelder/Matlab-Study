clear
close all
%========С������ͼ��ȥ��====
%=======����С���ֽ��С����ֵʵ��ȥ��====
load noiswom
% ���ɺ���ͼ����ʾ
init = 2055615866;
rng(init);
xx = X + 2 * randn(size(X));
[c,l] = wavedec2(xx,2,'db2');
a2 = wrcoef2('a',c,l,'db2',2);
% ���ó߶�����
n = [1,2];
% ������ֵ����
p = [10.28,24.08];
% �Ը�ƵС��ϵ��������ֵ����
nc = wthcoef2('t',c,l,n,p,'s');
% �ٴζԸ�ƵС��ϵ��������ֵ����
mc = wthcoef2('t',nc,l,n,p,'s');
x2 = waverec2(mc,l,'db2');


figure
subplot(1,3,1)
image(xx);
colormap(map)
axis square
title('����ͼ��ͼ��')
subplot(1,3,2)
image(a2);
axis square
title('С���ֽ�ȥ��')
subplot(1,3,3)
image(x2);
axis square
title('С����ֵȥ��')

% ���������
ps = sum(sum((X-mean(mean(X))).^2));
pn = sum(sum((a2 - X).^2));
disp('����С��2��ֽ�ȥ�������ȣ�')
disp(10 * log10(ps/pn));
disp('����С����ֵȥ��������:');
pn1 = sum(sum((x2 - X).^2));
disp(10 * log10(ps/pn1));