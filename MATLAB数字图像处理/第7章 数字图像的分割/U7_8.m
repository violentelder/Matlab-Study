clear
close all
%======����������====
i = imread('peppers.png');
i = rgb2gray(i);
i1 = double(i);
s = 255;
t = 55;
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')

if numel(s) == 1
   si = i1 == s;
   s1 = s;
else
    si = bwnorph(s,'shrink',Inf);
    j = find(si);
    s1 = i1(j);
end

ti = false(size(i1));
for k = 1:length(i1)
    sv = s1;
    s = abs(i1 - sv) <= t;
    ti = ti | s;
end
%ͼ����
[g, nr] = bwlabel(imreconstruct(si, ti));
subplot(1,2,2)
imshow(g)
title('�����������ָ�')
disp(strcat('NO. of regions��', num2str(nr)))











