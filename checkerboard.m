function M = checkerboard(n,m)
n = 5;
m = 7;
M(n,m) = 0;
oddn = 1:2:n;
oddm = 1:2:m;
evenn = 2:2:n;
evenm = 2:2:m;
M(oddn,oddm) = 1;
M(oddn,evenm) = 0;
M(evenn,oddm) = 0;
M(evenn,evenm) = 1;
M;
