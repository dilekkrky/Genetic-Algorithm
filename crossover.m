function [arapop] = crossover(arapop,psize,pcross,d)

pairs=randperm(psize);

for i=1:psize/2
    parent1idx=pairs(2*i-1);
    parent2idx=pairs(2*i);
    parent1=arapop(parent1idx,:);
    parent2=arapop(parent2idx,:);
    rs=unifrnd(0,1);
    if(rs<pcross)
       cpoint=unidrnd(d-1);
       dummy=parent1(cpoint+1:end);
       parent1(cpoint+1:end)=parent2(cpoint+1:end);
        parent2(cpoint+1:end)=dummy;
        arapop(parent1idx,:)=parent1;
        arapop(parent2idx,:)=parent2;
    end
    
end
end

