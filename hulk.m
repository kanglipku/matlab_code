function H = hulk(h)
H(1,:) = h;
H(2,:) = h.*h;
H(3,:) = h.*h.*h;