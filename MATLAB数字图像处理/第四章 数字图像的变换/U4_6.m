clear
close all
%======һά��ɢ���ұ任����dct�����任idct====
RGB = imread('autumn.tif');
 i = rgb2gray(RGB);
 j = dct2(i);
 figure
 imshow(log(abs(j)), [])
 colormap(jet(64)), colorbar
 title('�������ұ任ϵ��')
 
 j(abs(j) < 10) = 0;
 k = idct2(j);
 figure(2)
 subplot(1,2,1)
 imshow(i)
 title('ԭʼͼ��')
 subplot(1,2,2)
 imshow(k,[0 255])
 title('��ɢ���ҷ��任')