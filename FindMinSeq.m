
load lamN2
% dye_name={'FCM','FAM'}
range=1:200
mfilename
folder='F:\datanew\150428_C4C44_lane5_lamC350v1_MK_TG';
% folder=fileparts(mfilename('fullpath'))
folder=[folder,'\']
flow_port='ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABA'
mode='MK'
ports='AB'
channel=2
template=lam1
notationmapSC

flow_mix=tr(flow_port(range),ports,mode);
ideal_call=ideal_basecalling_all(template,flow_mix,notation_map);
for i = 110:200;
    n = i-109;
     a(n) = sum(ideal_call(1:i));
end    
a
    mode='RY'
    flow_mix=tr(flow_port(range),ports,mode);
[ideal_call,~,ideal_dyecall,ideal_mixcall,mixes]=ideal_basecalling_all(template,flow_mix,notation_map);
for i = 110:200;
    n = i-109;
     b(n) = sum(ideal_call(1:i));
end 
b
   mode='WS'
      flow_mix=tr(flow_port(range),ports,mode);
[ideal_call,ideal_basecall,ideal_dyecall,ideal_mixcall,mixes]=ideal_basecalling_all(template,flow_mix,notation_map);
for i = 110:200;
    n = i-109;
     c(n) = sum(ideal_call(1:i));
end     
c
for i = 110:200;
    n = i-109;
    d(n) = min(a(n),b(n));
    e(n) = min(c(n),d(n));
end
f = [110:200]
figure(1)

