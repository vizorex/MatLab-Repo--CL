function [ x ] = backeli( a , b)
[n,~] = size(a);

x = zeros(n,1)
x(n,1) = b(n,1)/a(n,n);
    for i = n-1 : -1 : 1
        sum =0;
        for j = i+1 : n
            sum = sum + a(n-1,j)* x(j,1);
        end
        x(i,1) = (b(i,1) - sum)/a(i,i);
    end

end

