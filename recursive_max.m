function mx = recursive_max(v)
    if length(v) ==1
       mx = v(1); 
       
    elseif length(v) ==2
        if v(1)>= v(2)
            mx = v(1);
        else
            mx = v(2);
        end
    else
        m = v(1:length(v)-1);
        n = recursive_max(m);
        if n>= v(end)
            mx = n;
        else
            mx = v(end);
        end
        
    end
end