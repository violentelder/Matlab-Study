clear
close all
%=======С���˲���wfilters=====

% ����С������
wname = 'db5';

% ���������С���������4���˲���
[lo_d, hi_d, lo_r, hi_r] = wfilters(wname);
figure
subplot(2,2,1)
stem(lo_d)
title('�ֽ��ͨ�˲���')
grid on
subplot(2,2,2)
stem(hi_d)
title('�ֽ��ͨ�˲���')
grid on
subplot(2,2,3)
stem(lo_r)
title('�ع���ͨ�˲���')
grid on
subplot(2,2,4)
stem(hi_r)
title('�ع���ͨ�˲���')
grid on