clear
close all
%======Hougu变换提取线段====
i = imread('circuit.tif');
roti = imrotate(i,33,'crop');
bw = edge(roti,'canny');
[h,t,r] = hough(bw);

imshow(h,[],'XData',t,'YData',r,'InitialMagnification','fit')
title('Hough变换矩阵')
xlabel('\theta')
ylabel('\rho')
axis on
axis normal
hold on
p = houghpeaks(h,5,'threshold',ceil(0.3*max(h(:))));
x = t(p(:,2));
y = r(p(:,1));
plot(x,y,'s','color','white')

%检测图像中的直线段
lines = houghlines(bw,t,r,p,'FillGap',5,'MinLength',7);
figure
imshow(roti),hold on
title('原始图像')
%检测直线段
max_len = 0;
for k = 1:length(line)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1), xy(:,2),'LineWidth',2,'Color', 'green');
   %标注直线段的端点
   plot(xy(1,1), xy(1,2),'x','LineWidth',2,'Color', 'yellow');
   plot(xy(2,1), xy(2,2),'x','LineWidth',2,'Color', 'red');
   %检测最长的直线段的端点
   len = norm(lines(k).point1 - lines(k).point2);
   if(len > max_len)
       max_len = len;
       xy_long = xy;
   end
end

%标注最长的直线段
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color', 'blue')
