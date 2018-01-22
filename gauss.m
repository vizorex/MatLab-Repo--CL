%guass-elimination
clear
clc
m=3;n=4;
a =  randi([1,10],m,n)
%a(1,1)=0;
%a(3,3)=0;

%Checking for zero on (i,i) elements

for i = 1:m
   if a(i,i) == 0
       for j = i+1 : m
       p = a(i, :);
       a(i,:)= a(j,:);
       a(j,:) = p;
       end
   end
end

for i = 1 : m-1
    for j = i+1 : m
        a(j,:) = a(j,:) - [a(j,i)/a(i,i)]*a(i,:);
    end
end

a
t = zeros(m,1);
for i = m : -1 : 1
    sum=0;
    for j = m+1 : n-1;
        sum = sum + (a(i,j)*t(j,1));
    end
    t(i,1) = (a(i,n) - sum )/a(i,i);
end
t
    