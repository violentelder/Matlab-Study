clear
close all
%=======С������ͼ���Ե���=====
load bust.mat;
% ���뺬��
init = 2055615866;
rng(init);
x1 = X + 20 * randn(size(X));
subplot(2,2,1)
image(x1);
colormap(map)
title('ԭʼͼ��')
axis square
% ��С��db4��ͼ�����С�����ֽ�
t = wpdec2(x1,1,'db4');
% �ع�ͼ����Ʋ���
a = wprcoef(t,[1,0]);
subplot(2,2,2)
image(a)
title('ͼ��Ľ��Ʋ���')
axis square

% ԭͼ��ı�Ե��ȡ
bw1 = edge(x1,'prewitt');
subplot(2,2,3)
imshow(bw1);
title('ԭͼ��ı�Ե')
axis square

% ͼ����Ʋ��ֵı�Ե��ȡ
bw2 = edge(a,'prewitt');
subplot(2,2,4)
imshow(bw2);
title('ͼ����Ʋ��ֵı�Ե')
axis square

