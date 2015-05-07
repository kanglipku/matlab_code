function movies(hr1, min1, durmin1, hr2, min2, durmin2)
min1end = min1+durmin1;
hr1end = hr1+fix(min1end/60)
min1end = mod(min1end,60)
m = min1+durmin1+30;
h = hr1+fix(m/60)
m = mod(m,60)
if (hr1end < hr2 || (hr1end == hr2 && min1end <= min2)) && (hr2 < h || (hr2 == h && min2 <= m))
    fprintf('True')
else
    fprintf('False')
end