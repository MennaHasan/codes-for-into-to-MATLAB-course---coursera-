%check the model answers 
% it writes ax +b = y in matrix from by 
% 1. making matrix [a,b] 
% 2. making matrix [x; ones(length(x))]
% 3. multiplying the two matrices will give us ax +b
% 4. the result will be y'
% 5. this is the matrix form, make division to get [a, b] directly

function [a, b] = lin_reg(x,y)
    n = length(x);
    
    segy = sum(y);
    segx = sum(x);
    segx2 = sum(x.^2);
    segxy = sum(x.*y);
    
    a_n = n*segxy - (segx*segy);  
    a_d = n*segx2 - segx^2;
    
    b_n = (segy*segx2) - (segx*segxy);
    
    a = a_n/a_d;
    b = b_n/a_d;
    


end