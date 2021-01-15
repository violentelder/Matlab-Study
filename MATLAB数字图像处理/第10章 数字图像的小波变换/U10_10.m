clear
close all
%=======���С����ͼ���ع�waverec2=====
x = imread('flower.jpg');
x = rgb2gray(x);
% ����2��С���ֽ�
[c,s] = wavedec2(x,2,'db4');
siz = s(size(s,1),:);
% �ֽ�
ca2 = appcoef2(c,s,'db4',2);
chd2 = detcoef2('h',c,s,2);
cvd2 = detcoef2('v',c,s,2);
cdd2 = detcoef2('d',c,s,2);
% �ع�
a2 = upcoef2('a',ca2,'db4',2,siz);
hd2 = upcoef2('h',chd2,'db4',2,siz);
vd2 = upcoef2('v',cvd2,'db4',2,siz);
dd2 = upcoef2('d',cdd2,'db4',2,siz);
A1 = a2 + hd2 + vd2 + dd2;
% ���е���С���ֽ�
[ca1,ch1,cv1,cd1] = dwt2(x,'db4');
a1 = upcoef2('a',ca1,'db4',1,siz);
hd1 = upcoef2('h',ch1,'db4',1,siz);
vd1 = upcoef2('v',cv1,'db4',1,siz);
dd1 = upcoef2('d',cd1,'db4',1,siz);
A0 = a1 + hd1 + vd1 + dd1;
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0,'defaultFigurePosition',[100,100,1000,500]);
% �޸�ͼ�α�����ɫ������
set(0,'defaultFigureColor',[1,1,1]);

figure
subplot(2,4,1)
imshow(uint8(a2))
title('�ع���a2')
subplot(2,4,2)
imshow(uint8(hd2))
title('�ع���hd2')
subplot(2,4,3)
imshow(uint8(vd2))
title('�ع���vd2')
subplot(2,4,4)
imshow(uint8(dd2))
title('�ع���dd2')
subplot(2,4,5)
imshow(uint8(a1))
title('�ع���a1')
subplot(2,4,6)
imshow(uint8(hd1))
title('�ع���hd1')
subplot(2,4,7)
imshow(uint8(vd1))
title('�ع���vd1')
subplot(2,4,8)
imshow(uint8(dd1))
title('�ع���dd1')

figure
subplot(1,3,1)
imshow(x);
title('ԭʼͼ��')
subplot(1,3,2)
imshow(uint8(A1));
title('����ͼ��A1')
subplot(1,3,3)
imshow(uint8(A0));
title('����ͼ��A0')