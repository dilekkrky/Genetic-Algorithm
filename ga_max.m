function [eniyicozum,eniyideger] = ga_max(as,us,d,psize,pcross,pmutation,delta)
%UNTİTLED Summary of this function goes here
%   Detailed explanation goes here
population=unifrnd(as,us,[psize,d]);
iterasyon=1;
eniyideger=100000;
while(iterasyon<75)
    
obj=zeros(psize,1);

for i=1:psize     
       
       obj(i)=-1*cos(population(i,1))*cos(population(i,2)*exp(-population(i,1)-pi)^.2-(population(i,2)-pi)^.2);
end
   if(max(obj)<eniyideger)
       eniyideger=max(obj);
       idx=find(obj==eniyideger);
       eniyicozum=population(idx,:);
   end
  
 [arapop] = dogalsecilim_max(population,obj,psize);
 [arapop] = crossover(arapop,psize,pcross,d);
 population = mutation(arapop,pmutation,psize,d,delta,us,as);
 iterasyon=iterasyon+1;
end
end