clear
close all
%========小波用于图像融合====
%=======利用二维小波变换将两幅图像融合====
load woman.mat;
x1 = X;
map1 = map;
figure
subplot(1,3,1)
imshow(X,map);
title('原始woman图像')
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
title('原始wbarb图像')
axis square

% 进行融合
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
title('融合图像')
axis square
