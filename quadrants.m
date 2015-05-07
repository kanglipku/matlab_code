function Q = quadrants(n)
Q(2*n,2*n) = 0;
Q(1:n, 1:n) = 1;
Q(1:n, n+1:2*n) = 2;
Q(n+1:2*n, 1:n) = 3;
Q(n+1:2*n, n+1:2*n) =4;
Q
end
