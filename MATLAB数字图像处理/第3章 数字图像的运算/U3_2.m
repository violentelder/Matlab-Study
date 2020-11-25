clear
close all
%===分段线性点运算==
R = imread('peppers.png');
J = rgb2gray(R);
[M,N] = size(J);
x = 1;
y = 1;
for x=1:M
    for y = 1 : N
        if(J(x,y) <= 35)
            H(x, y) = J(x, y) * 10;
        elseif(J(x, y) > 35 && J(x, y) <= 75)
            H(x, y) = (10/7) * [J(x, y) - 5] + 150;
        else
            H(x, y) = (105/180) * [J(x, y) - 75] + 150;
        end
    end
end

figure
subplot(1,2,1);
imshow(J);
title('原始图像')
subplot(1,2,2)
imshow(H);
title('变换后图像')

            