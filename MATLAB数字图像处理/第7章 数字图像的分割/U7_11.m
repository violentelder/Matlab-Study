clear
close all
%======һ��΢������====
i = imread('tire.tif');
figure
subplot(2,2,1)
imshow(i)
title('ԭʼͼ��')

%sobel���ӽ��б�Ե���
bw1 = edge(i,'sobel', 0.15);
subplot(2,2,2)
imshow(bw1)
title('sobel���ӱ�Ե���')

%Robetrs���ӽ��б�Ե���
bw2 = edge(i,'Roberts', 0.15);
subplot(2,2,3)
imshow(bw2)
title('Roberts���ӱ�Ե���')

%Prewitt���ӽ��б�Ե���
bw3 = edge(i,'Prewitt', 0.15);
subplot(2,2,4)
imshow(bw3)
title('Prewitt���ӱ�Ե���')