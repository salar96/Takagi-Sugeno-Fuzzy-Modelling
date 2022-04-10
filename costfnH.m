function [ err ] = costfnH(B,X,fis,round)

% this is the cost function for higher rounds
% B is a 5*2^round vector
s=size(X);
nvars=s(2)-1;
r=2^round;
x=X(:,1:nvars);
y=X(:,s(2));
for i=1:r
    
    % i represents rule number
   b=i*(nvars+1);
   a=b-nvars;
fis.output.mf(i).params=B(a:b);

end


err=sqrt(sum((evalfis(x,fis)-y).^2));

end



