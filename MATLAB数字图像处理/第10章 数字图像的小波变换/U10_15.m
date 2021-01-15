clear
close all
%========小波用于图像去噪====
%=======利用小波变换和中值滤波实现图像去噪====
x = imread('flower.jpg');
x = double(rgb2gray(x));
% 产生含噪声图像
init = 2055615866;
rng(init);
x1 = x + 25 * randn(size(x));

% 消噪处理：设置wdencmp的消噪参数
[thr, sorh, keepapp] = ddencmp('den', 'wv', x1);
x2 = wdencmp('gbl',x1,'sym4',2,thr,sorh,keepapp);
x3 = x;
for i = 2:577
    for j = 2:579
        xtemp = 0;
        for m = 1:3
            for n = 1:3
                % 对图像进行平滑处理以增强消噪效果（中值滤波）
                xtemp = xtemp + x1((i + m) - 2,(j+n) - 2);
            end
        end
        xtemp = xtemp/9;
        x3(i-1,j-1) = xtemp;
    end
end


figure
subplot(2,2,1)
imshow(uint8(x));
axis square
title('原始图像')
subplot(2,2,2)
imshow(uint8(x1));
axis square
title('含噪声图像')
subplot(2,2,3)
imshow(uint8(x2));
axis square
title('全局阈值滤波去噪')
subplot(2,2,4)
imshow(uint8(x3));
axis square
title('中值滤波去噪')

% 计算信噪比
ps = sum(sum((x - mean(mean(x))).^2));
pn = sum(sum((x1-x).^2));
pn1 = sum(sum((x2-x).^2));
pn2 = sum(sum((x3-x).^2));

disp('未处理的含噪图像的信噪比snr：')
disp(10*log10(ps/pn))
disp('小波全局阈值滤波的信噪比snr1：')
disp(10*log10(ps/pn1))
disp('中值滤波的信噪比snr2：')
disp(10*log10(ps/pn2))
