clear
close all
%======����ֵ����ָ�====
i = imread('lena.jpg');
i = rgb2gray(i);
figure
subplot(1,3,1)
imshow(i)
title('ԭʼͼ��')

c = histc(i,0:255);
n = sum(c');
N = sum(n);
t = n/N;
subplot(1,3,2)
bar(0:255, t)
title('ֱ��ͼ')
hold off
axis([0,255,0,0.03])

%������ֵ���ָ�ͼ��
[p, threshold] = min(t(120:150));
%Ѱ����ֵ
threshold = threshold + 120;
tt = find(i > threshold);
i(tt) = 255;
tt = find(i <= threshold);
i(tt) = 0;
subplot(1,3,3)
imshow(i)
title('��ֵ�ָ�ͼ��')


