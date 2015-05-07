function w = moving_average(x)
persistent v;
n = 25;
if isempty(v)
    v = x;
else
    v = [v,x];
end
if length(v)>n
    w = v;
   for i = 1:n
       w(i) = w(i+1);
   end 
   w = w(1:n);
   meanw = mean(w)
   v = w;
else
   w = v;
   meanw = mean(w)
end

