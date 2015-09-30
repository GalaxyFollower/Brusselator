function isEq = matrix_is_equals(myA, mmA, m)
	isEq=1;
	for i=1:2*m
		for j=1:2*m
			if(myA(i,j)- mmA(i,j) > 0)
				isEq=0;
				return;
			endif
		endfor
	endfor
endfunction