% Calculate a tridiagonal matrix of size m x m
% with low in the lower diagonal, middle in the diagonal
% and up in the upper diagonal.
function T = calculate_tridiag (m, low, middle, up)
	T=zeros(m,m);

	for i=1:m
		for j=1:m
			if(i==j+1)
				T(i,j)=low;
			elseif (i==j)
				T(i,j)=middle;
			elseif (i+1==j)
				T(i,j)=up;
			endif				
		endfor
	endfor

endfunction