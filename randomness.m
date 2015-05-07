function M = randomness(limit,n,m)
limit = limit + 1;
M = limit.*rand(n,m);
M = fix(M)