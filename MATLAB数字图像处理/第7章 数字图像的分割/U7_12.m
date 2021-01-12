clear
close all
%======二阶微分算子====
%LOG算子
x = -2 : 0.1 : 2;
y = -2 : 0.1 : 2;
sigma = 0.5;
y = y';
for i = 1:(4/0.1+1)
    xx(i, :) = x;
    yy(:,i) = y;
end
r = 1/(pi*sigma^4) * ((xx.^2 + yy.^2)/(2 * sigma ^ 2)-1) .* exp(-(xx.^2 + yy.^2)/(2 * sigma ^ 2));
figure
colormap(jet(16));
mesh(xx,yy,r)
title('LOG算子')
