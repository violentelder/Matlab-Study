clear
close all
%======Ԥ�����˲���====
i = imread('cameraman.tif');
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')
%���ɳ���20���Ƕ�45��Ľ��������˲���
h = fspecial('motion',20,45);
motionblur = imfilter(i,h,'replicate');
subplot(2,2,2)
imshow(motionblur)
title('�˶��˲���')

%���ɰ뾶Ϊ10��Բ�ξ�ֵ�˲���
h2 = fspecial('disk',10);
blurred = imfilter(i,h2);
subplot(2,2,3)
imshow(blurred)
title('Բ���˲���')

%��������ʽ���Ӵ�������Ĥ�˲���
h3 = fspecial('unsharp');
sharpened = imfilter(i,h3,'replicate');
subplot(2,2,4)
imshow(sharpened)
title('��Ĥ�˲���')


