%Descomposición QR mediante reflexiones de Householder
%Esta versión contiene unas pocas optimizaciones repecto de la versión 1


function [Q,R] = qrhouse2(A)

[m,n] = size(A);

Q = eye(m,m);
R = A;

for k = 1:n
	%Tomo los elementos de la k-ésima columna 
	%de la diagonal para abajo
	x = R(k:m,k);

	%%%%%%%%%%
	%Formo la reflexión de Householder
	%%%%%%%%%%
	s = sign(x(1))*norm(x);
	u = x;
	u(1) = x(1)+s;
	H = eye(m-k+1)-u*u'/(s*u(1));

	%%%%%%%%%
	%voy formando la matriz R
	%%%%%%%%%
	R(k,k) = -s;		%se puede verificar que la diagonal siempre da así.
	R(k+1:m,k) = 0;		%pongo ceros debajo de la diagonal
	R(k:m,k+1:n) = H*R(k:m,k+1:n); 

	%%%%%%%%%
	%voy formando la matriz Q 
	%%%%%%%%%
	%sólo considero la parte de la matrizque cambia
	Q(k:m,:) = H*Q(k:m,:);
end

Q = Q';

