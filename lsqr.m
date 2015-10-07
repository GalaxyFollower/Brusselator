% lsqr: La funcion resuleve problemas de cuadrados minimos del tipo
% norm(Ax-y,2) mediante la descomposicion QR. El prototipo de la funcion
% debe ser el siguiente: [x,e] = lsqr(A,y)
% Entradas:
% <A> es una matriz de m*n elementos.
% <y> es un vector columna de m*1 elementos.
% Retornos:
% <x> es un vector columna de n*1 elementos.
% <e> es el error cuadratico medio.

function [x,e] = lsqr(A,y)

x=NaN;e=NaN;
% Verifico que <A> y <y> sean no nulos.
if ( isempty(A) || isempty(y) )
    disp('ERROR: Verifique que sus variables no sean nulas')
	return;
end;

[m,n] = size(A);
[o,p] = size(y);

%Verifico que la matriz <A> sea de m*n con m >= n (caso contrario el
%sistema es incompatible) y que <y> sea de tamaÒo [n,1]
if ( m<n || p~=1 || m~=o)
    disp('ERROR: Verifique las dimensiones de sus variables')
    return;
end;

%Obtengo la descomposicion QR
[Q,R] = qr(A);

%Obtengo las formas reducidas de R y Q
R = R(1:n,:);
Q1 = Q(:,1:n);
Q2 = Q(:,(n+1):m);

% R*x = (Q1')*y = Z
Z = Q1'*y;

%Calculo <x> por sustitucion regresiva
j = length(Z);
x = zeros(j,1);
x(j) = Z(j)/R(j,j);

for k=j-1:-1:1
	x(k) = (Z(k)-R(k,k+1:j)*x(k+1:j))/R(k,k);
end;

%calculo el error cuadratico medio <e>
e = (norm(Q2'*y,2))^2;

