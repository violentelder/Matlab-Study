clear
close all
%======Í¼ÏñµÄ±ê×¼²î====
i = imread('liftingbody.png');
s1 = std2(i);
j = histeq(i);
s2 = std2(j);

subplot(1,3,1)
imshow(i)
subplot(1,3,2)
histogram(i)
subplot(1,3,3)
histogram(j)