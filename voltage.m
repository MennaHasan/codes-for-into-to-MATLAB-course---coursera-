function out = voltage(V,R)
    A(1,1) = R(1)*R(2)+R(2)*R(7)+R(1)*R(7);
    A(1,2) = -R(1)*R(2);
    A(1,3) = 0;
    
    A(2,1) = -R(3)*R(4)*R(8);
    A(2,2) = R(3)*R(4)*R(8) + R(3)*R(4)*R(7) + R(4)*R(7)*R(8) +R(3)*R(7)*R(8);
    A(2,3) = -R(3)*R(4)*R(7);
    
    A(3,1) = 0;
    A(3,2) = -R(5)*R(6);
    A(3,3) = R(5)*R(6) +R(8)*R(6)+R(5)*R(8)
    
    b = [R(2)*R(7)*V; R(4)*R(7)*R(8)*V; R(6)*R(8)*V]
    
    out = A\b;
end

  