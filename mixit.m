function out = mixit(A,weights)
   A = double(A);
   A = -1 + (2 / 65536) * (A +1);
   
   out = A*weights';
   
   if abs(max(out))>1
      out = out/abs(max(out)); 
   end

end