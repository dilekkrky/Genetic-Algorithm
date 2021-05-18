function [x,fval] = ga(as,us,d,psize,pcross,pmutation,delta)
%UNTİTLED Summary of this function goes here
%   Detailed explanation goes here
population=unifrnd(as,us,[psize,d]);
iterasyon=1;
eniyideger=100000;
while(iterasyon<100)
    
obj=zeros(psize,1);

for i=1:psize     
     obj(i)=-1*cos(population(i,1))*cos(population(i,2)*exp(-population(i,1)-pi)^.2-(population(i,2)-pi)^.2);
end
   if(min(obj)<eniyideger)
       fval=min(obj);
       idx=find(obj==eniyideger);
       x=population(idx,:);
   end
  
 [arapop] = dogalsecilim(population,obj,psize);
 [arapop] = crossover(arapop,psize,pcross,d);
 population = mutation(arapop,pmutation,psize,d,delta,us,as);
 iterasyon=iterasyon+1;
end
end

