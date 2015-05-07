function replace=tr(mat,searchlist,replacelist)
% TR  Replace element, mimicing the tr operator in Perl. 
replace=mat;
Ls=length(searchlist);
Lr=length(replacelist);

if Ls<Lr
    error('The searchlist can not be shorter than replacelist!');
elseif Ls==Lr
    for k=1:Ls
        replace( mat==searchlist(k) )=replacelist(k);
    end
else % Ls>Lr
    replace=tr(mat,searchlist(1:Lr),replacelist);
    for k=1:Ls-Lr
        replace( mat==searchlist(k+Lr) )=[];
    end
end