clear
close all
%========С������ͼ��ѹ��====
%=======��ֵѹ��ͼ����wdecmp====
load detfingr.mat;
% colormap�ķ�Χ
nbc = size(map,1);

[c,s] = wavedec2(X,2,'db4');
thr_h = [21,46];
thr_v = [21,46];
thr_d = [21,46];
thr = [thr_h;thr_v;thr_d];
[xcompress2, cxd, lxd, perf0, perfl2] = wdencmp('lvd',X,'db3',2,thr,'h');
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0,'defaultFigurePosition',[100,100,1000,500]);
% �޸�ͼ�α�����ɫ������
set(0,'defaultFigureColor',[1,1,1]);
y = wcodemat(X,nbc);
y1 = wcodemat(xcompress2,nbc);
figure
subplot(2,2,1)
imshow(y,map)
axis square
title('ӳ������ѹ��ǰ��ͼ��')
subplot(2,2,2)
imshow(y1,map)
axis square
title('ӳ������ѹ�����ͼ��')
subplot(2,2,3)
image(y)
axis square
title('��ɫ��ʽѹ��ǰ��ͼ��')
subplot(2,2,4)
image(y1)
axis square
title('��ɫ��ʽѹ�����ͼ��')
% ��ʾѹ������
disp('С��ϵ���������ϵ�������ٷֱȣ�')
disp(perfl2)
disp('ѹ����ͼ��ʣ�������ٷֱȣ�')
disp(perf0)