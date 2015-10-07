% Calculate the eig values of the A matrix
% a is the A matrix
function E = custom_eig (A, s)
	i = s;
	E = zeros(i);
	while i > 1
		if (A(i, i-1) == 0) 
			E(i) = A(i,i);
			i = i - 1
		else 
			c = [1, - (A(i-1,i-1) + A(i,i)), A(i-1, i-1)*A(i,i) - A(i-1 , i)*A(i, i-1)];
			B = roots(c)
			E(i-1) = B(1);
			E(i) = B(2);
			i = i - 2;
		endif
	endwhile
endfunction