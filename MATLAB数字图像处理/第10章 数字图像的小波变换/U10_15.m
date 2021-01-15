clear
close all
%========С������ͼ��ȥ��====
%=======����С���任����ֵ�˲�ʵ��ͼ��ȥ��====
x = imread('flower.jpg');
x = double(rgb2gray(x));
% ����������ͼ��
init = 2055615866;
rng(init);
x1 = x + 25 * randn(size(x));

% ���봦������wdencmp���������
[thr, sorh, keepapp] = ddencmp('den', 'wv', x1);
x2 = wdencmp('gbl',x1,'sym4',2,thr,sorh,keepapp);
x3 = x;
for i = 2:577
    for j = 2:579
        xtemp = 0;
        for m = 1:3
            for n = 1:3
                % ��ͼ�����ƽ����������ǿ����Ч������ֵ�˲���
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
title('ԭʼͼ��')
subplot(2,2,2)
imshow(uint8(x1));
axis square
title('������ͼ��')
subplot(2,2,3)
imshow(uint8(x2));
axis square
title('ȫ����ֵ�˲�ȥ��')
subplot(2,2,4)
imshow(uint8(x3));
axis square
title('��ֵ�˲�ȥ��')

% ���������
ps = sum(sum((x - mean(mean(x))).^2));
pn = sum(sum((x1-x).^2));
pn1 = sum(sum((x2-x).^2));
pn2 = sum(sum((x3-x).^2));

disp('δ����ĺ���ͼ��������snr��')
disp(10*log10(ps/pn))
disp('С��ȫ����ֵ�˲��������snr1��')
disp(10*log10(ps/pn1))
disp('��ֵ�˲��������snr2��')
disp(10*log10(ps/pn2))
