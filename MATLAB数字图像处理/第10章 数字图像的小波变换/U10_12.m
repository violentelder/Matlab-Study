clear
close all
%=======��ȡ��άС���任�Ľ���ϵ��appcoef2=====
load woman;
figure
subplot(1,3,1)
imshow(X,map);
title('ԭʼͼ��')

% �߶�Ϊ2������db1С��ϵ���ֽ�ͼ��
[c,s] = wavedec2(X,2,'db1');
disp('ԭʼͼ��Ĵ�С��')
disp(size(c))
disp(s)

% ��ȡ�߶�Ϊ2�еĵ�Ƶ�ź�
ca2 = appcoef2(c,s,'db1',2);
subplot(1,3,2)
image(ca2)
colormap(map)
title('�߶�Ϊ2�еĵ�Ƶͼ��')
disp('�߶�2�еĵ�Ƶ�źŵĴ�СΪ��')
disp(size(ca2))

% ��ȡ�߶�Ϊ2�еĵ�Ƶ�ź�
ca1 = appcoef2(c,s,'db1',1);
subplot(1,3,3)
image(ca1)
colormap(map)
title('�߶�Ϊ1�еĵ�Ƶͼ��')
disp('�߶�1�еĵ�Ƶ�źŵĴ�СΪ��')
disp(size(ca1))