function o = reversal(v)
    if length(v) ==2
        tmp = v(2);
        v(2) = v(1);
        v(1) = tmp;
        o = v;
    elseif length(v)==1
        o = v;  
    else
        v(end +1) = v(1);
        o = [reversal(v(2:end-1)), v(end)];
    end

end