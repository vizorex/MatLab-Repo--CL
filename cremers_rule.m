clc
clear
m=4;
A = randi([1,25],m)
B = randi([1,100],m,1)

x = zeros(m,1)

a = det(A);
for i = 1 : m
    alpha = A;
    alpha(:,i) = B;
    x(i,1) = det(alpha)/a;
end
x

