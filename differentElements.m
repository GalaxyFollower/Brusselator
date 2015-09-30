
function isEq = matrix_is_Equals(myA, mmA, m)
	for i=1:2*m
		for j=1:2*m
			if(myA(i,j)- mmA(i,j) > 0)
				disp("i:");disp(i)
				disp("j:");disp(j)
				disp(myA(i,j))
				disp(mmA(i,j))
				disp(" ");
			endif
		endfor
	endfor

endfunction