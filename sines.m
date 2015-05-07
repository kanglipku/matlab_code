function [s1,s2,sums] = sines(pts,amp,f1,f2)
if nargin == 4
s1 = amp.*sin(f1.*[1:pts]);
s2 = amp.*sin(f2.*[1:pts]);
sums = s1 + s2;
else
end
if nargin == 3
f2 == 1.05.*f1; 
s1 = amp.*sin(f1.*[1:pts]);
s2 = amp.*sin(f2.*[1:pts]);
sums = s1 + s2;
else    
end
if nargin == 2
f1 == 100;
f2 == 1.05.*f1; 
s1 = amp.*sin(f1.*[1:pts]);
s2 = amp.*sin(f2.*[1:pts]);
sums = s1 + s2;
else
end
if nargin == 1
amp == 1;
f1 == 100;
f2 == 1.05.*f1; 
s1 = amp.*sin(f1.*[1:pts]);
s2 = amp.*sin(f2.*[1:pts]);
sums = s1 + s2;
else
end
if nargin == 0
pts == 100
amp == 1;
f1 == 100;
f2 == 1.05.*f1; 
s1 = amp.*sin(f1.*[1:pts]);
s2 = amp.*sin(f2.*[1:pts]);
sums = s1 + s2; 
else
end
plot(sums)
