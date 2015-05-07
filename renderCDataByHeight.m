
function renderCDataByHeight(hb)
    for j = 1:length(hb)
        % 设置hb(j)的Cdata属性
        % 制作CData新值cdata用以替换其旧值
        % cdata将在ZData的基础上修改而成
        cdata = get(hb(j), 'ZData');
        % cdata行数除以6就是数据行数
        m = size(cdata,1)/6;
        % 填充cdata
        for i = 1:m
            % 设置cdata中(i,j)数据对应的6行
            % 将这6行的值均填充(i,j)数据的值
            vij = cdata((i-1)*6+2,2);%可由cdata(ZData)中获得(i,j)数据的值
            cdata((i-1)*6+1:(i-1)*6+6,:) = vij;%(i,j)数据对应的6行填充完毕
        end
        set(hb(j), 'Cdata', cdata);%将cdata赋给Cdata属性
    end

