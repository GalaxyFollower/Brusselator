% Test the eigen values method.
function T = custom_eig (m)
	a=2; b=5.45; delt1=0.008; delt2=0.004; L=0.51302;
	A = generate_A_matrix(m, a, b, delt1, delt2, L);
	h = 2 * m;
	used = zeros(1, h);
	calculated_eig = custom_eig(A, m);
	[rightAns, EIG] = eig(A);
	tol = 0.00001;
	for i=1:h
		ansL = 0;
		for j= 1:h
			if ((abs(calculated_eig(i) - EIG(j,j)) < tol) && (used(j) == 0))
				used(j) = 1;
				ansL = 1;
				break;
			endif
		endfor
		if (ansL == 0)
			disp("test fail");
			%return;
		endif
	endfor
	if (ansL == 1)
		disp("test succeded");
	endif
endfunction


