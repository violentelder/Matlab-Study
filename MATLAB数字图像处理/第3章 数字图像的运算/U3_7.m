clear
close all
%========histeqʵ�ֹ涨������====
I = imread('tire.tif');
%==hgramΪһ����������ֱ��ͼ�涨��ӳ�䣬ӳ��Ҷ�����Ϊn��nԽ��ӳ��Ĳ㼶��Խ��
hgram = ones(1,256);
J = histeq(I, hgram);
subplot(2,2,1)
imshow(uint8(I));
title('ԭʼͼ��');
subplot(2,2,2)
imshow(J)

subplot(2,2,3)
imhist(I);
title('ԭʼͼ��ֱ��ͼ');
subplot(2,2,4)
imhist(J);
title('ͼ����⻯��ֱ��ͼ')
