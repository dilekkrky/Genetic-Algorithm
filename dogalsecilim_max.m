function [arapop] = dogalsecilim_max(population,obj,psize)
%UNTİTLED4 Summary of this function goes here
%   Detailed explanation goes here
obj=1.*obj;
sumobj=sum(obj);
probs=obj/sumobj;
cprobs=probs;

for i=2:psize
    cprobs(i)=cprobs(i-1)+probs(i);
end

rs=unifrnd(0,1,[psize,1]);
arapop=population;
for i=1:psize
    idx=find(rs(i)<cprobs,1);
    arapop(1,:)=population(idx,:);
    
end
end

