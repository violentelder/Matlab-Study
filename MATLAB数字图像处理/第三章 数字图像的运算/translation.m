function J = translation(I,a,b,n)
%IΪ����ͼ��a,b�ֱ�Ϊ����X��Y�����ƶ��ľ���
%n == 1�򲻿���������
[M,N,G] = size(I);
I = im2double(I);
if (n == 1)
    J = ones(M,N,G);
    for i = 1:M
        for j = 1:N
            if((i+a) >= 1 && (j+b >= 1) && (j + b <=N))
                J(i + a,j+b,:) = I(i,j,:);
            end
        end
    end
end
%n == 2����������
if(n == 2)
    J = ones(M + abs(a), N + abs(b), G);
    for i = 1:M
        for j = 1:N
            if(a < 0 && b < 0)
                J(i,j,:) = I(i,j,:);
            else if(a > 0 && b > 0)
                     J(i + a,j+b,:) = I(i,j,:);
            else if(a > 0 && b < 0)
                     J(i + a,j,:) = I(i,j,:);
            else if(a < 0 && b > 0)
                     J(i,j+b,:) = I(i,j,:);
                end
                end
                end
            end
        end
    end
end
                        
                    
    
    
        
    
