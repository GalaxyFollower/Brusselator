function [row col v] = full2sparse(A)
%La funcion recibe una matriz cuadrada A y devuelve un vector v con los
%elementos distintos de cero y las posiciones de dichos elementos en la
%matriz original.
[row,col,v] = find(A);

row = row';
col = col';
v = v';

end