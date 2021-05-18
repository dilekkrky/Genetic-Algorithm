function [arapop] = mutation(arapop,pmutation,psize,d,delta,us,as)
%UNTİTLED6 Summary of this function goes here
%   Detailed explanation goes here

rs=unifrnd(0,1,[psize,d]);
for i=1:psize
    for j=1:d
        if(rs(i,j)<pmutation)
            rs2=unifrnd(-1,1);
            arapop(i,j)=arapop(i,j)+rs2*delta*(us-as);
        end
    end
end

end

