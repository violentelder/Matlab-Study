clear
close all
%======Fan-Beam�任ʵ�����ع�====
p = phantom(256);
d = 250;
%ָ����Դ��ͼ���������ص�ľ���
dsensor1 = 2;
f1 = fanbeam(p,d,'FanSensorSpacing',dsensor1);
dsensor2 = 1;
f2 = fanbeam(p,d,'FanSensorSpacing',dsensor2);
dsensor3 = 0.25;
[f3,sensor_pos3,fan_rot_angles3] = fanbeam(p,d,'FanSensorSpacing',dsensor3);
%ָ��outputsize��С��ʹ�ع�ͼ����ԭʼͼ���С��ͬ
output_size = max(size(p));
%�ع�ͼ��
ifan1 = ifanbeam(f1,d,'FanSensorSpacing',dsensor1,'OutputSize',output_size);
ifan2 = ifanbeam(f2,d,'FanSensorSpacing',dsensor2,'OutputSize',output_size);
ifan3 = ifanbeam(f3,d,'FanSensorSpacing',dsensor3,'OutputSize',output_size);
figure
subplot(2,2,1)
imshow(p)
title('ԭʼͼ��')
subplot(2,2,2)
imshow(ifan1)
title('��F1�ع�ͼ��')
subplot(2,2,3)
imshow(ifan2)
title('��F2�ع�ͼ��')
subplot(2,2,4)
imshow(ifan3)
title('��F3�ع�ͼ��')

%�ֱ�ָ�����ֲ�ͬ�Ĺ�����ࣨͶӰ��̽�����ϵļ�ࣩ
figure
imagesc(fan_rot_angles3,sensor_pos3,f3)
colormap(hot)
colorbar
xlabel('������ת�Ƕȣ�degrees��')
ylabel('���δ�����λ�ã�degrees')
