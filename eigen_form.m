function Aeig = eigen_form(m, a, b, delta1, delta2, L)
    h = 1/(m+1); 
  
    tau1 = delta1/(h*L)^2; 
    tau2 = delta2/(h*L)^2;
    for j=1:m,
       eigofT(j) = -2*(1- cos(pi*j*h) );  % eigenvalues of T
    end
    for j=1:m,
       coeff(1) = 1;
       coeff(2) = a^2 - (b - 1) - (tau1+tau2)*eigofT(j);
       coeff(3) = b*a^2 + tau1*tau2*eigofT(j)^2 + tau2*(b-1)*eigofT(j) - a^2*tau1*eigofT(j) - a^2*(b-1);
       d = roots(coeff);
       Aeig(j) = d(1);  
       Aeig(m+j) = d(2); % eigenvalues of A
    end
end