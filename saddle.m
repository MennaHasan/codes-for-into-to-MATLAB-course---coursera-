function indices = saddle(M)
    indices = [];
    [s1, s2] = size(M);
    
    for i = 1:s1
        for j = 1:s2
            h = issaddle(M,i,j);
            if h
                indices = [indices; i j];
            end
        end
    end
end

function l = issaddle(M,row,col)
    [s1, s2] = size(M);
    l1 = true;
    l2 = true;
    %compare to its row
    for i = 1:s2
        if M(row,col) < M(row,i)
            l1 = false;
        end
    end
    %compare to its column
    for i = 1:s1
        if M(row,col) > M(i, col)
            l2 = false;
        end
    end
    %deciding the output
    if l1&&l2 
       l = true; 
    else 
        l = false;
    end
end