clear
close all
%========��̬ѧ�˲�====
%=======��ñ�˲�=====
i = imread('rice.png');
figure
subplot(2,2,1)
imshow(i);
title('ԭʼͼ��')

se = strel('disk', 12);
tophat = imtophat(i,se);
subplot(2,2,2)
imshow(tophat);
title('ͼ���ñ�˲�')

adjust = imadjust(i);
subplot(2,2,3)
imshow(adjust);
title('ԭʼͼ��Ҷȵ���')

tadjust = imadjust(tophat);
subplot(2,2,4)
imshow(tadjust);
title('��ñ�˲���ͼ��Ҷȵ���')