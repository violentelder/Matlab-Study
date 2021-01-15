clear
close all
%=======ͼ��Ķ��С���ֽ�wavedec2=====
load woman;
nbcol = size(map,1);
% ����db2С����������ͼ��ֽ�
[c,s] = wavedec2(X,2,'db2');
% ��ȡԭͼ�����X�Ĵ�С
siz = s(size(s,1),:);
% ��ȡ���С���ֽ�ṹc��s�ĵ�һ��С���任�Ľ���ϵ��
ca1 = appcoef2(c,s,'db2',1);
% ���ö��С���ֽ�ṹc��s��ȡ��һ��С���任��ϸ��ϵ����ˮƽ����
chd1 = detcoef2('h',c,s,1);
% ���ö��С���ֽ�ṹc��s��ȡ��һ��С���任��ϸ��ϵ���Ĵ�ֱ����
cvd1 = detcoef2('v',c,s,1);
% ���ö��С���ֽ�ṹc��s��ȡ��һ��С���任��ϸ��ϵ���ĶԽǷ���
cdd1 = detcoef2('d',c,s,1);
% ��ȡ���С���ֽ�ṹc��s�ĵڶ���С���任�Ľ���ϵ��
ca2 = appcoef2(c,s,'db2',2);
% ���ö��С���ֽ�ṹc��s��ȡ�ڶ���С���任��ϸ��ϵ����ˮƽ����
chd2 = detcoef2('h',c,s,2);
% ���ö��С���ֽ�ṹc��s��ȡ�ڶ���С���任��ϸ��ϵ���Ĵ�ֱ����
cvd2 = detcoef2('v',c,s,2);
% ���ö��С���ֽ�ṹc��s��ȡ�ڶ���С���任��ϸ��ϵ���ĶԽǷ���
cdd2 = detcoef2('d',c,s,2);

ca11 = ca2 + chd2 + cvd2 + cdd2;
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0,'defaultFigurePosition',[100,100,1000,500]);
% �޸�ͼ�α�����ɫ������
set(0,'defaultFigureColor',[1,1,1]);

figure
subplot(2,4,1)
imshow(uint8(wcodemat(ca2,nbcol)));
title('����ϵ��')
subplot(2,4,2)
imshow(uint8(wcodemat(chd2,nbcol)));
title('ˮƽϸ�ڷ���H2')
subplot(2,4,3)
imshow(uint8(wcodemat(cvd2,nbcol)));
title('��ֱϸ�ڷ���V2')
subplot(2,4,4)
imshow(uint8(wcodemat(cdd2,nbcol)));
title('�Խ�ϸ�ڷ���D2')
subplot(2,4,5)
imshow(uint8(wcodemat(ca11,nbcol)));
title('�ع�����ϵ��A1')
subplot(2,4,6)
imshow(uint8(wcodemat(chd1,nbcol)));
title('ˮƽϸ�ڷ���H1')
subplot(2,4,7)
imshow(uint8(wcodemat(cvd1,nbcol)));
title('��ֱϸ�ڷ���V1')
subplot(2,4,8)
imshow(uint8(wcodemat(cdd1,nbcol)));
title('�Խ�ϸ�ڷ���D1')

disp('С������ֽ�Ľ���ϵ������ca2�Ĵ�Сca2_size��')
disp(s(1,:));
disp('С������ֽ��ϸ��ϵ������cd2�Ĵ�Сcd2_size��')
disp(s(2,:));
disp('С��һ��ֽ��ϸ��ϵ������cd1�Ĵ�Сcd1_size��')
disp(s(3,:));
disp('ԭͼ���С��')
disp(s(4,:));
disp('С���ֽ�ϵ��c�ĳ��ȣ�')
disp(length(c));

