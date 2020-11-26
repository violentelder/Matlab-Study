clear
close all
%======Wallis算子锐化====
I = imread('lena.jpg');
I = rgb2gray(I);
subplot(1,3,1)
imshow(I)
title('原始图像')
I = im2double(I);
[height,width,R] = size(I);
for i = 2:height-1
    for j = 2:width-1
        II(i,j) = log10(I(i,j)+1) - 0.25 * (log10(I(i-1,j)+1) + log10(I(i+1,j)+1)+log10(I(i,j-1)+1)+log10(I(i,j+1)+1));
    end
end
min1 = min(II);
min2 = min(min1);

for i = 2:height-1
    for j = 2:width-1
        II(i,j) = 46 * II(i,j) - min2 +0.4;
    end
end
subplot(1,3,2)
imshow(II,[])
title('四邻域')

for i = 1:height-1
    for j = 1:width-1
        if(II(i,j) < -0.035)
            II(i,j) = 0;
        else
            II(i,j) = 1;
        end
    end
end
subplot(1,3,3)
imshow(II,[])
title('八邻域')

