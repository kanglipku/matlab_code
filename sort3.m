function sort3(a,b,c)
M = [a,b,c];
if b<a
   v = a;
   a = b;
   b = v;
else
end
if c<b 
    v = b;
    b = c;
    c = v;
else 
end
if b<a
   v = a;
   a = b;
   b = v;
else
end
M = [a,b,c]
