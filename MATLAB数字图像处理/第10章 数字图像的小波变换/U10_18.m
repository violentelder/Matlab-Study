clear
close all
%=======С������ͼ����ǿ=====
load sinsin.mat
figure
subplot(1,2,1)
imshow(X,map);
title('ԭʼͼ��')
axis square

% ����ͼ����ǿ����
% ��С������sym4��X����2��С���ֽ�
[c,s] = wavedec2(X,2,'sym4');
sizec = size(c);
% �Էֽ�ϵ�����д�����ͻ���������֣�����ϸ�ڲ���
for i = 1:sizec(2)
    if(c(i) > 350)
        c(i) = 2 * c(i);
    else
        c(i) = 0.5 * c(i);
    end
end
xx = waverec2(c,s,'sym4');
% �����ع����ͼ��
subplot(1,2,2)
imshow(xx,map);
title('��ǿͼ��')
axis square