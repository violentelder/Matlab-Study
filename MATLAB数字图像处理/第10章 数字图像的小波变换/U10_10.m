clear
close all
%=======多层小波的图像重构waverec2=====
x = imread('flower.jpg');
x = rgb2gray(x);
% 进行2层小波分解
[c,s] = wavedec2(x,2,'db4');
siz = s(size(s,1),:);
% 分解
ca2 = appcoef2(c,s,'db4',2);
chd2 = detcoef2('h',c,s,2);
cvd2 = detcoef2('v',c,s,2);
cdd2 = detcoef2('d',c,s,2);
% 重构
a2 = upcoef2('a',ca2,'db4',2,siz);
hd2 = upcoef2('h',chd2,'db4',2,siz);
vd2 = upcoef2('v',cvd2,'db4',2,siz);
dd2 = upcoef2('d',cdd2,'db4',2,siz);
A1 = a2 + hd2 + vd2 + dd2;
% 进行单层小波分解
[ca1,ch1,cv1,cd1] = dwt2(x,'db4');
a1 = upcoef2('a',ca1,'db4',1,siz);
hd1 = upcoef2('h',ch1,'db4',1,siz);
vd1 = upcoef2('v',cv1,'db4',1,siz);
dd1 = upcoef2('d',cd1,'db4',1,siz);
A0 = a1 + hd1 + vd1 + dd1;
% 修改图形图像位置的默认设置
set(0,'defaultFigurePosition',[100,100,1000,500]);
% 修改图形背景颜色的设置
set(0,'defaultFigureColor',[1,1,1]);

figure
subplot(2,4,1)
imshow(uint8(a2))
title('重构的a2')
subplot(2,4,2)
imshow(uint8(hd2))
title('重构的hd2')
subplot(2,4,3)
imshow(uint8(vd2))
title('重构的vd2')
subplot(2,4,4)
imshow(uint8(dd2))
title('重构的dd2')
subplot(2,4,5)
imshow(uint8(a1))
title('重构的a1')
subplot(2,4,6)
imshow(uint8(hd1))
title('重构的hd1')
subplot(2,4,7)
imshow(uint8(vd1))
title('重构的vd1')
subplot(2,4,8)
imshow(uint8(dd1))
title('重构的dd1')

figure
subplot(1,3,1)
imshow(x);
title('原始图像')
subplot(1,3,2)
imshow(uint8(A1));
title('近似图像A1')
subplot(1,3,3)
imshow(uint8(A0));
title('近似图像A0')