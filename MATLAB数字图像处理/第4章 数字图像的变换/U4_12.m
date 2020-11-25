clear
close all
%======Fan-Beam变换实现与重构====
p = phantom(256);
d = 250;
%指定光源与图像中心像素点的距离
dsensor1 = 2;
f1 = fanbeam(p,d,'FanSensorSpacing',dsensor1);
dsensor2 = 1;
f2 = fanbeam(p,d,'FanSensorSpacing',dsensor2);
dsensor3 = 0.25;
[f3,sensor_pos3,fan_rot_angles3] = fanbeam(p,d,'FanSensorSpacing',dsensor3);
%指定outputsize大小，使重构图像与原始图像大小相同
output_size = max(size(p));
%重构图像
ifan1 = ifanbeam(f1,d,'FanSensorSpacing',dsensor1,'OutputSize',output_size);
ifan2 = ifanbeam(f2,d,'FanSensorSpacing',dsensor2,'OutputSize',output_size);
ifan3 = ifanbeam(f3,d,'FanSensorSpacing',dsensor3,'OutputSize',output_size);
figure
subplot(2,2,1)
imshow(p)
title('原始图像')
subplot(2,2,2)
imshow(ifan1)
title('用F1重构图像')
subplot(2,2,3)
imshow(ifan2)
title('用F2重构图像')
subplot(2,2,4)
imshow(ifan3)
title('用F3重构图像')

%分别指定三种不同的光束间距（投影到探测器上的间距）
figure
imagesc(fan_rot_angles3,sensor_pos3,f3)
colormap(hot)
colorbar
xlabel('扇形旋转角度（degrees）')
ylabel('扇形传感器位置（degrees')
