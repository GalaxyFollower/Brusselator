% Calculate the eig values of the A matrix
% A is the A matrix
% cota should be updated depending of the sieze of the matrix.

function E = custom_eig (A)
	i = size(A)(1);
	E = zeros(1, i);
	cota = 1e-12; %si la matriz falla en algunos casos aumentar el 12 hasta que funcione, neceista más iteraciones

	while i > 2 
		[Q, R] = qr(A);
		A = R*Q;

		%Recupero los autovalores de esa matriz
		if (abs(A(i, i-1)) < (abs(A(i, i)) + abs(A(i -1, i - 1)))*cota) 
			E(i) = A(i,i);
			i = i - 1;
			A = A(1:i, 1:i);
		elseif abs(A(i-1,i-2)) < (abs(A(i-1,i-1)) + abs(A(i-2,i-2)))*cota
			ANS = roots([1, - (A(i-1,i-1) + A(i,i)), A(i-1, i-1)*A(i,i) - A(i-1 , i)*A(i, i-1)]);
			E(i-1) = ANS(1);
			E(i) = ANS(2);
			i = i - 2;
			A = A(1:i, 1:i);
		endif

	endwhile
	ANS = roots([1, - (A(i-1,i-1) + A(i,i)), A(i-1, i-1)*A(i,i) - A(i-1 , i)*A(i, i-1)]);
	E(i-1) = ANS(1);
	E(i) = ANS(2);
endfunction