clear
close all
%========С������ͼ���ں�====
%=======���ö�άС���任������ͼ���ں�====
load woman.mat;
x1 = X;
map1 = map;
figure
subplot(1,3,1)
imshow(X,map);
title('ԭʼwomanͼ��')
axis square

load wbarb.mat;
x2 = X;
map2 = map;
for i = 1:256
    for j = 1:256
        if(x2(i,j) > 100)
            X(i,j) = 1.3 * x2(i,j);
        else
            x2(i,j) = 0.6 * x2(i,j);
        end
    end
end
subplot(1,3,2)
imshow(x2,map);
title('ԭʼwbarbͼ��')
axis square

% �����ں�
[c1,s1] = wavedec2(x1,2,'sym5');
sizec1 = size(c1);
for i = 1:sizec1(2)
    c1(i) = 1.3 * c1(i);
end
[c2,s2] = wavedec2(x2,2,'sym5');
c = 0.5 * c1 + c2;
c = 0.6 * c;
x = waverec2(c,s1,'sym5');
subplot(1,3,3)
imshow(x,map);
title('�ں�ͼ��')
axis square
