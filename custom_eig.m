% Calculate the eig values of the A matrix
% a is the A matrix
function E = custom_eig (A ,s)
	i = size(A)(1);
	E = zeros(1, i);
	cota = 1e-10;
	maxit = 100000;
	k = 0;
	while i > 2 
		[Q, R] = qr(A);
		A = R*Q;

		%Recupero los autovalores de esa matriz
		if (abs(A(i, i-1)) < (abs(A(i, i)) + abs(A(i -1, i - 1)))*cota) 
			E(i) = A(i,i);
			i = i - 1;
			k = 1;
			A = A(1:i, 1:i);
		elseif abs(A(i-1,i-2)) < (abs(A(i-1,i-1)) + abs(A(i-2,i-2)))*cota
			a = 1;
			b = - (A(i-1,i-1) + A(i,i));
			c = A(i-1, i-1)*A(i,i) - A(i-1 , i)*A(i, i-1);
			E(i-1) = complex(-b/(2*a) + sqrt(b*b -4*a*c)/(2*a));
			E(i) = complex(-b/(2*a) - sqrt(b*b -4*a*c)/(2*a));
			i = i - 2;
			%k = 1;
		endif
		
		if(k == maxit)
			A
			a = 1;
			b = - (A(i-1,i-1) + A(i,i));
			c = A(i-1, i-1)*A(i,i) - A(i-1 , i)*A(i, i-1);
			E(i-1) = complex(-b/(2*a) + sqrt(b*b -4*a*c)/(2*a));
			E(i) = complex(-b/(2*a) - sqrt(b*b -4*a*c)/(2*a));
			i = i - 2;
			k = 1;
		endif
		%k = k + 1;
	endwhile
	a = 1;
	b = - (A(i-1,i-1) + A(i,i));
	c = A(i-1, i-1)*A(i,i) - A(i-1 , i)*A(i, i-1);
	E(i-1) = complex(-b/(2*a) + sqrt(b*b -4*a*c)/(2*a));
	E(i) = complex(-b/(2*a) - sqrt(b*b -4*a*c)/(2*a));
endfunction