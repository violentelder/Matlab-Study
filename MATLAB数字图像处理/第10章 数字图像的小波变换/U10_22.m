clear
close all
%========小波用于图像融合====
%=======自定义融合====
load mask.mat;
A = X;
load bust.mat;
B = X;

% 定义融合规则和调用的函数名
Fus_method = struct('name', 'userDEF', 'param', 'myfus_FUN');
C = wfusmat(A,B,Fus_method);
figure
colormap(pink(220))
subplot(1,3,1)
image(A);
title('原始图像mask')
axis square
subplot(1,3,3)
image(B);
title('原始图像mask')
axis square
subplot(1,3,2)
image(C);
title('融合后的图像')
axis square

