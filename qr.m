% QR descomposition using Householder algorithm
% This algorith is taken from "qr.pdf" at iol folders for MNA.
% A matrix to descompose 

function [Q,R] = qr(A)
[m, n] = size(A);
Q = eye(m,m);
R = A;

for k = 1:n
	x = R(k:m,k);
	s = sign(x(1))*norm(x);
	u = x;
	u(1) = x(1)+s;
	H = eye(m-k+1)-u*u'/(s*u(1));

	R(k,k) = -s;		
	R(k+1:m,k) = 0;		
	R(k:m,k+1:n) = H*R(k:m,k+1:n); 
	
	Q(k:m,:) = H*Q(k:m,:);
end

Q = Q';

