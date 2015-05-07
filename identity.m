function M = identity(n)
M(n,n) = 0;
for i = 1:n
    M(i,i) = 1;
end
