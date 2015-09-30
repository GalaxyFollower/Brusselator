function I = calculate_identity (m)
	I = zeros(m,m);
	for i=1:m
		I(i,i)=1;
	endfor
endfunction