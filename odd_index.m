function N=odd_index(M)
[x,y]=size(M);
N=M(1:2:x, 1:2:y);