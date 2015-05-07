function [homoint,EndPos]=FindHomoEndPos(Sequence)
% FINDHOMOENDPOS Find homopolymer's end position. 

homoint.seq=[];
homoint.length=[];
EndPos=[];

crtBase=Sequence(1);
crtLength=1;
for k=2:length(Sequence)
    if Sequence(k)==crtBase
        crtLength=crtLength+1;
    else
        homoint.seq=[homoint.seq,crtBase];
        homoint.length=[homoint.length,crtLength];
        EndPos=[EndPos,k-1];
        crtBase=Sequence(k);
        crtLength=1;
    end
end

homoint.seq=[homoint.seq,crtBase];
homoint.length=[homoint.length,crtLength];
EndPos=[EndPos,k];