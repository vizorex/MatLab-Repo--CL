function [ x ] = foreli( a , b)
[n,~] = size(a);

x = zeros(n,1)
x(1,1) = b(1,1)/a(1,1);
    for i = 2  : n
        sum =0;
        for j = 1 : i-1
            sum = sum + a(i,j)* x(j,1);
        end
        x(i,1) = (b(i,1) - sum)/a(i,i);
    end

end

