function [ err ] = costfn(B,x,y,fis )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

fis.output.mf(1).params=B(1:2);
fis.output.mf(2).params=B(3:4);
err=sqrt(sum((evalfis(x,fis)-y).^2));

end

