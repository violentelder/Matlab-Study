clear
close all
%======����-�ϲ���====
%���Ĳ����ָ�ͼ��
i = imread('liftingbody.png');
figure
subplot(1,2,1)
imshow(i)
title('ԭʼͼ��')

%�Ĳ����ֽ⣬�����Ĳ����ṹϡ�����
s = qtdecomp(i, .27);
blocks = repmat(uint8(0), size(s));
for dim = [512 256 128 64 32 16 8 4 2 1]
    %������Ŀ���ά��
    numblocks = length(find(s == dim));
    if(numblocks > 0)
        values = repmat(uint8(1), [dim dim numblocks]);
        values(2:dim, 2:dim, :) = 0;
        blocks = qtsetblk(blocks, s, dim, values);
    end
end
blocks(end, 1:end) = 1;
blocks(1:end, end) = 1;
subplot(1,2,2)
imshow(blocks, [])
title('�Ĳ����ָ�ͼ��')