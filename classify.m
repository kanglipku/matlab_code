function classify(n)
s = size(n);
if s(2)== 0
    fprintf('-1')
elseif s(2) == 1
    fprintf('0')
elseif s(1) ==1 && s(2) >1
    fprintf('1')
else
    fprintf('2')
end

    
