
function renderCDataByHeight(hb)
    for j = 1:length(hb)
        % ����hb(j)��Cdata����
        % ����CData��ֵcdata�����滻���ֵ
        % cdata����ZData�Ļ������޸Ķ���
        cdata = get(hb(j), 'ZData');
        % cdata��������6������������
        m = size(cdata,1)/6;
        % ���cdata
        for i = 1:m
            % ����cdata��(i,j)���ݶ�Ӧ��6��
            % ����6�е�ֵ�����(i,j)���ݵ�ֵ
            vij = cdata((i-1)*6+2,2);%����cdata(ZData)�л��(i,j)���ݵ�ֵ
            cdata((i-1)*6+1:(i-1)*6+6,:) = vij;%(i,j)���ݶ�Ӧ��6��������
        end
        set(hb(j), 'Cdata', cdata);%��cdata����Cdata����
    end

