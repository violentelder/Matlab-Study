clear
close all
%======分裂-合并法====
%用四叉树分割图像
i = imread('liftingbody.png');
figure
subplot(1,2,1)
imshow(i)
title('原始图像')

%四叉树分解，返回四叉树结构稀疏矩阵
s = qtdecomp(i, .27);
blocks = repmat(uint8(0), size(s));
for dim = [512 256 128 64 32 16 8 4 2 1]
    %各区块的可能维数
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
title('四叉树分割图像')