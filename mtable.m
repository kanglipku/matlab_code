function [mt,ss] = mtable(n,m)
for i = 1:n
    for j = 1:m
        mt(i,j) = i.*j;
    end
end
ss = sum(sum(mt));