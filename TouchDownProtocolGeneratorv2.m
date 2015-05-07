a = date;
b = strrep(a,'-',' ');
c = 'TouchDownProtocol ';
d = [c,b];
file = fopen(d,'w');
n1 = 15;
touchdown_temp=linspace(65,60,n1);
for i = 1:n1;
   fprintf(file, '%d\t %d\t %3.2f\t %3.2f\t \r\n', i,1,95,10) ;
   fprintf(file, '%d\t %d\t %3.2f\t %3.2f\t \r\n', i,2,touchdown_temp(i),15) ;
   fprintf(file, '%d\t %d\t %3.2f\t %3.2f\t \r\n', i,3,72,30) ;
end
n2 = 30;
for i = n1+(1:n2);
   fprintf(file, '%d\t %d\t %3.2f\t %3.2f\t \r\n', i,1,95,10) ;
   fprintf(file, '%d\t %d\t %3.2f\t %3.2f\t \r\n', i,2,65,300) ;
end
fclose(file);