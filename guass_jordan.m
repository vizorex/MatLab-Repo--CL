%guass-jordan

clear
clc
m=3;n=4;
a =  randi([1,10],m,n)
%a(1,1)=0;
%a(3,3)=0;

%Checking for zero on (i,i) elements

for i = 1:m
   if a(i,i) == 0;
       for j = i+1 : m
       p = a(i, :);
       a(i,:)= a(j,:);
       a(j,:) = p;
       end
   end
end

for i = 1 : m
    a(i,:) = a(i, :)/a(i,i);
    for i = 1 : m
        for j = i+1 : m
            a(j,:) = a(j,:) - [a(j,i)/a(i,i)]*a(i,:);
        end
        for j = i-1: -1 : 1
            a(j,:) = a(j,:) - [a(j,i)/a(i,i)]*a(i,:);
        end
    end

end

a

x = zeros(m,1);
for i = 1 : m
    x(i,1) = a(i,n);
end
x


    