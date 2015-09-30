function A = generate_A_matrix (m, a, b, delt1, delt2, L)
  h = 1 / (m+1);
  tau1 = delt1/((h*L)**2);
  tau2 = delt2/((h*L)**2);

  T = calculate_tridiag(m,1,-2,1);
  I = calculate_identity(m);

  a11 = tau1*T+(b-1)*I;
  a12 = (a**2)*I;
  a21 = -b*I;
  a22 = tau2*T-(a**2)*I;

  A = [a11,a12,a21,a22];

endfunction