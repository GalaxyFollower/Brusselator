% Test the eigen values method.
function T = custom_eig (m)
	a=2; b=5.45; delt1=0.008; delt2=0.004; L=0.51302;
	A = generate_A_matrix(m, a, b, delt1, delt2, L);
	used = zeros(m);
	calculated_eig = custom_eig(A, m);
	[rightAns, B] = eig(A);
	for i=1:m
		ansL = 0;
		for j= 1:m;
			if ((calculated_eig(i) == rightAns(j)) && !used(j))
				used(j) = 1;
				j = m;
				ansL = 1;
				break;
			endif
		endfor
		if (!ansL)
			disp("test fail");
			return;
		endif
	endfor
	if (ansL)
		disp("test succeded");
	endif
endfunction


