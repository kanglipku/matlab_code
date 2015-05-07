
a=[1:3];
hb=bar3(a)

x=get(hb,'ZData')


for j = 1 : length(hb)
        % 用Zdata属性去填充Cdata属性
        zdata = [       
     3     3     3   NaN
     1.65     1.4     3     3
     0     1.2     3     3
     3     3     3   NaN
   NaN     3     3   NaN
   NaN     3   NaN   NaN
   NaN     0     0   NaN
     0     3     2     0
     0     3     2     0
   NaN     0     0   NaN
   NaN     0     0   NaN
   NaN   NaN   NaN   NaN
   NaN     0     0   NaN
     0     3     3     0
     0     3     3     0
   NaN     0     0   NaN
   NaN     0     0   NaN
   NaN   NaN   NaN   NaN];
        set(hb(j), 'Cdata', zdata);
        % 设置边线颜色
        set(hb, 'EdgeColor', [0.3 0.8 0.5] );
end

    %%
d=[1:10;2:11
    3:12]
e(6,5)=0
y
       NaN    0.6000    0.6000       NaN
    0.6000    0.6000    0.6000    0.6000
    1.4000    1.4000    1.4000    1.4000
       NaN    1.4000    1.4000       NaN
       NaN    0.6000    0.6000       NaN
       NaN       NaN       NaN       NaN
 x      
       NaN    0.6000    1.4000       NaN
    0.6000    0.6000    1.4000    1.4000
    0.6000    0.6000    1.4000    1.4000
       NaN    0.6000    1.4000       NaN
       NaN    0.6000    1.4000       NaN
       NaN       NaN       NaN       NaN

