clear
close all
%=======���С����ͼ���ع�waverec2=====
load woman;
figure
subplot(2,3,1)
imshow(X,map);
title('ԭʼͼ��')

[c,s] = wavedec2(X,2,'sym5');
% ��С���ֽ�ṹ[c,s]�ĵ�Ƶϵ���ֱ���г߶�1�ͳ߶�2�ϵ��ع�
a1 = wrcoef2('a',c,s,'sym5',1);
subplot(2,3,2)
image(a1)
colormap(map);
title('�߶�1��Ƶͼ��')
a2 = wrcoef2('a',c,s,'sym5',2);
subplot(2,3,3)
image(a2)
colormap(map);
title('�߶�2��Ƶͼ��')
% ��С���ֽ�ṹ[c,s]�ĸ�Ƶϵ���ֱ���г߶�2�ϵ��ع�
hd2 = wrcoef2('h',c,s,'sym5',2);
subplot(2,3,4)
image(hd2)
colormap(map);
title('�߶�2ˮƽ��Ƶͼ��')
vd2 = wrcoef2('v',c,s,'sym5',2);
subplot(2,3,5)
image(vd2)
colormap(map);
title('�߶�2��ֱ��Ƶͼ��')
dd2 = wrcoef2('d',c,s,'sym5',2);
subplot(2,3,6)
image(dd2)
colormap(map);
title('�߶�2�ԽǸ�Ƶͼ��')

% ����ع�ͼ��Ĵ�С
disp('ԭʼͼ��Ĵ�С��')
disp(size(X));
disp('�߶�1��Ƶͼ���СΪ��')
disp(size(a1));
disp('�߶�2��Ƶˮƽͼ���СΪ��')
disp(size(hd2))


