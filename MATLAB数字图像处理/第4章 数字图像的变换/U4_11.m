clear
close all
%======Radon�任====
%======Radon���任iradon====
%phantom����һ��ͷ����Ӱͼ��
p = phantom(128);
r = radon(p,0:179);
i1 = iradon(r,0:179);
i2 = iradon(r,0:179,'linear', 'none');

figure
subplot(1,3,1)
imshow(p)
title('ԭʼͼ��')
subplot(1,3,2)
imshow(i1)
title('�������˲���radon���任')
subplot(1,3,3)
imshow(i2,[])
title('���������˲���radon���任')