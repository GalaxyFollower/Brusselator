function isEq = matrix_is_equals(myA, mmA, m)
	e=0.00000000001; % representation error
	isEq=1;
	for i=1:2*m
		for j=1:2*m
			if(abs(myA(i,j)- mmA(i,j)) > e)
				disp("error in matrix_is_equals");
				disp(myA(i,j))
				disp(mmA(i,j))
				disp(myA(i,j)-mmA(i,j))
				isEq=0;
				return;
			endif
		endfor
	endfor
endfunction
