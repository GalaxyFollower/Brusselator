%La funcion recibe una matriz cuadrada A y devuelve un vector v con los
%elementos distintos de cero y las posiciones de dichos elementos en la
%matriz original.
%row tiene un elemento extra que nos dice el tamaño de A (A cuadrada, nxn)

function [row col v] = full2sparse(A)

	[row,col,v] = find(A);

	row = row';
	row(size(row)(2)+1)=size(A)(2);
	col = col';
	v = v';

end
