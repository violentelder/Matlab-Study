function C = myfus_FUN(A,B)
    D = logical(triu(ones(size(A))));
    t = 0.3;
    C = A;
    C(D) = t * A(D) + (1-t) * B(D);
    C(~D) = t * B(~D) + (1-t) * A(~D);
end