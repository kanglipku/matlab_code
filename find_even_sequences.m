file = fastaread ('lambda phage whole genome.fasta');
lamda_dna = file.Sequence;
n = length(lamda_dna);
m = 500;
x = fix(n/m)-1;
fragment = {};
a = {};
b = {};
c = {};
for i = 1:x
    seq = lamda_dna(i*500-499:i*500);
    seq_MK = tr(seq,'AC','M');
    seq_MK = tr(seq_MK,'GT','K');
    seq_RY = tr(seq,'AG','R');
    seq_RY = tr(seq_RY,'CT','Y');
    seq_WS = tr(seq,'AT','W');
    seq_WS = tr(seq_WS,'CG','S');
    a = FindHomoEndPos(seq_MK);
    b = FindHomoEndPos(seq_RY);
    c = FindHomoEndPos(seq_WS);
    d = length(a.length);
    e = length(b.length);
    f = length(c.length);
    g = [d,e,f];
    h = sort(g);
    if h(3)-h(1)<=0
       fragment=[fragment,seq]
    else
    end
end

