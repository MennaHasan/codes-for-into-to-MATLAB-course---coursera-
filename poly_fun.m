function fh = poly_fun(p)
    function polynomial = poly(x)
         polynomial = sum(x.^(0:length(p)-1).*p);
    end
    fh = @poly;
end