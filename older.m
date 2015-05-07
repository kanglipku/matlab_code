function older(y1, m1, d1, y2, m2, d2)
if y1 == y2 && m1 == m2 && d1 == d2
    fprintf('0')
else
end
if y1 > y2
   fprintf('-1') 
elseif y1 == y2 && m1 > m2
   fprintf('-1') 
elseif y1 == y2 && m1 == m2 && d1 > d2
    fprintf('-1') 
else
end
if y1 < y2
   fprintf('1') 
elseif y1 == y2 && m1 < m2
   fprintf('1') 
elseif y1 == y2 && m1 == m2 && d1 < d2
    fprintf('1') 
else
end 
