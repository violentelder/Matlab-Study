clear
close all
%=======多层小波的图像重构waverec2=====
load woman;
figure
subplot(2,3,1)
imshow(X,map);
title('原始图像')

[c,s] = wavedec2(X,2,'sym5');
% 对小波分解结构[c,s]的低频系数分别进行尺度1和尺度2上的重构
a1 = wrcoef2('a',c,s,'sym5',1);
subplot(2,3,2)
image(a1)
colormap(map);
title('尺度1低频图像')
a2 = wrcoef2('a',c,s,'sym5',2);
subplot(2,3,3)
image(a2)
colormap(map);
title('尺度2低频图像')
% 对小波分解结构[c,s]的高频系数分别进行尺度2上的重构
hd2 = wrcoef2('h',c,s,'sym5',2);
subplot(2,3,4)
image(hd2)
colormap(map);
title('尺度2水平高频图像')
vd2 = wrcoef2('v',c,s,'sym5',2);
subplot(2,3,5)
image(vd2)
colormap(map);
title('尺度2垂直高频图像')
dd2 = wrcoef2('d',c,s,'sym5',2);
subplot(2,3,6)
image(dd2)
colormap(map);
title('尺度2对角高频图像')

% 检查重构图像的大小
disp('原始图像的大小：')
disp(size(X));
disp('尺度1低频图像大小为：')
disp(size(a1));
disp('尺度2高频水平图像大小为：')
disp(size(hd2))


