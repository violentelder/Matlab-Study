clear
close all
%=======ʵ�ֶ�άС���任�ĵ����ع�upwlev2=====
load woman
[c,s] = wavedec2(X,2,'db1');
disp('�ֽ���ͼ���СΪ��')
disp(size(c))
disp(s)

% ֱ�����÷ֽ�ϵ���ع�ͼ��
[nc,ns] = upwlev2(c,s,'db1');
disp('�ع����ͼ���СΪ��')
disp(size(nc));
disp(ns)
