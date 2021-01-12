clear
close all
%======动态阈值法====
%==迭代法
i = imread('eight.tif');
figure
subplot(1,2,1)
imshow(i)
title('原始图像')

zmax = max(max(i));
zmin = min(min(i));
tk = (zmin+zmax) / 2;
bcal = 1;
isize = size(i);
while(bcal)
    %定义前景和背景数目
    ifrontground = 0;
    ibackground = 0;
    %定义前景和背景灰度总和
    foregroundsum = 0;
    backgroundsum = 0;
    for k=1 : isize(1)
        for j = 1 : isize(2)
            temp = i(k,j);
            if(temp > tk)
                ifrontground = ifrontground + 1;
                foregroundsum = foregroundsum + double(temp);
            else
                ibackground = ibackground +1;
                backgroundsum = backgroundsum + double(temp);
            end
        end
    end
    %计算前景和后景的平均值
    z0 = foregroundsum / ifrontground;
    z1 = backgroundsum / ibackground;
    tktemp = uint8((z1+z0)/2);
    if(tktemp == tk)
        bcal = 0;
    else
        tk = tktemp;
    end
end
disp(strcat('迭代后的阈值：', num2str(tk)));
newi = imbinarize(i, double(tk)/255);
subplot(1,2,2)
imshow(newi)
title('迭代法分割后的图像')

