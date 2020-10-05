clear
close all
%======ÕºœÒ¥Ì«–±‰ªª
i = imread('wflower.jpg');
i = rgb2gray(i);
figure
subplot(1,2,1)
imshow(i)
title('¥Ì«–«∞')

[m,n] = size(i);
j(1:m + 0.5 * n, 1:n) = 0;

for x = 1:m
    for y = 1:n
        j(fix(x + 0.5 * y), y) = double(i(x,y));
    end
end
subplot(1,2,2)
imshow(j,[])
title('¥Ì«–∫Û')
    