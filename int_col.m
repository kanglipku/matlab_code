function t = int_col(n)
s = (1:n);
v(1) = s(end);
v(2:n) = s(1:end-1);
t = v'

