clear
close all
%======Í¬Ì¬ÂË²¨====
I = imread('lena.jpg');
I = rgb2gray(I);
subplot(1,2,1)
imshow(I)
title('Ô­Ê¼Í¼Ïñ')

j = double(I);
f = fft2(j);
g = fftshift(f);
[m,n] = size(f);
d0 = 10;
r1 = 0.5;
rh = 2;
c = 4;
n1 = floor(m/2);
n2 = floor(n/2);
for i = 1 : m
    for j = 1:n
        d = sqrt((i-n1)^2 + (j-n2)^2);
        h = (rh - r1) * (1-exp(-c *(d.^2/d0.^2))) + r1;
        g(i,j) = h * g(i,j);
    end
end
g = ifftshift(g);
g = uint8(real(ifft2(g)));
subplot(1,2,2)
imshow(g)
title('Í¬Ì¬ÂË²¨Æ÷')


