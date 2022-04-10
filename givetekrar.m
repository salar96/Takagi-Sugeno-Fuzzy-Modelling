function y=givetekrar(A,var_num)
s=size(A)*[0;1];
y=zeros(1,var_num);
for i=1:var_num
    tek=0;
    for j=1:s
    if A(j) == i
        tek=tek+1;
    end
    end
    y(i)=tek;
end
    
end