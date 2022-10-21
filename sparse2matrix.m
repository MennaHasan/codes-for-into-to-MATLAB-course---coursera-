function matrix = sparse2matrix(A)
    l = length(A)-2;
    
   defaultval = A{1,2};
   d = A{1,1};
   a = d(1);
   b = d(2);
   matrix = defaultval*ones(a,b);
   
   for i=1:l
      hh= A{i+2}; 
      m = hh(1);
      n = hh(2);
      o = hh(3);
      matrix(m,n) = o;
   end
end