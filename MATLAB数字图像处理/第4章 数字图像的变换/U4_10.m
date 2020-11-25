clear
close all
%======Radon±ä»»====
%======Radon±ä»»¼ì²âÖ±Ïß====
i = fitsread('solarspectra.fts');
i = mat2gray(i);
bw = edge(i);
figure
subplot(1,2,1)
imshow(i)
title('Ô­Ê¼Í¼Ïñ')
subplot(1,2,2)
imshow(bw)
title('±ßÔµÍ¼Ïñ')

%¼ÆËã±ßÔµÍ¼ÏñµÄradon±ä»»
theta = 0:179;
[R,xp] = radon(bw,theta);
figure
imagesc(theta,xp,R)
xlabel('\theta(degrees)')
ylabel('x\prime')
colormap(hot),colorbar
title('R_{\theta} {x\prime}')
Rmax = max(max(R));
[row, col] = find(R >= Rmax);
x = xp(row);
angle = theta(col);
