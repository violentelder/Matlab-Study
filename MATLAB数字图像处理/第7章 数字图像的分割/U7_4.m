clear
close all
%======��̬��ֵ��====
%==������
i = imread('eight.tif');
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')

zmax = max(max(i));
zmin = min(min(i));
tk = (zmin+zmax) / 2;
bcal = 1;
isize = size(i);
while(bcal)
    %����ǰ���ͱ�����Ŀ
    ifrontground = 0;
    ibackground = 0;
    %����ǰ���ͱ����Ҷ��ܺ�
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
    %����ǰ���ͺ󾰵�ƽ��ֵ
    z0 = foregroundsum / ifrontground;
    z1 = backgroundsum / ibackground;
    tktemp = uint8((z1+z0)/2);
    if(tktemp == tk)
        bcal = 0;
    else
        tk = tktemp;
    end
end
disp(strcat('���������ֵ��', num2str(tk)));
newi = imbinarize(i, double(tk)/255);
subplot(1,2,2)
imshow(newi)
title('�������ָ���ͼ��')

