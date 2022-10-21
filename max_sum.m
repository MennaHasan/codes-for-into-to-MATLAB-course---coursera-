function [summa, index] = max_sum(v,n)
   [~, s] = size(v);
   if n>s 
        summa = 0; 
        index = -1;
   elseif n==s
       index = 1;
       summa = sum(v);
   else
   %note that when you assigned it to 0, it made problems with negative numbers    
   bestsum=-999999999;
   index = 1;
        for x = 1:1:(s-n+1)
            tempsum = 0;
            for u = 0:n-1
                tempsum = tempsum + v(x+u);
            end
            if tempsum > bestsum
                bestsum = tempsum;
                index = x;
            end
        end
   summa = bestsum;
   end
end