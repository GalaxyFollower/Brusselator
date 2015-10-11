% Test the eigen values method

function T = custom_eig (m)
	a=2; b=5.45; delt1=0.008; delt2=0.004; L=0.51302;
  	inittime = clock();
	A = generate_A_matrix(m, a, b, delt1, delt2, L);
	h = 2 * m;
	used = zeros(1, h);
	calculated_eig = custom_eig(A);
	totaltime = etime(clock(),inittime);
    totaltime = totaltime/60;
    disp(totaltime);
	[rightAns, EIG] = eig(A);
	tol = 0.00001;
	
	for i=1:h
		ansL = 0;
		for j= 1:h
			if ((abs(calculated_eig(i) - EIG(j,j)) < tol) && (used(j) == 0))
				ansL = 1;
				used(j) = 1;
				break;
			endif
		endfor
		if (ansL == 0)
			i
			disp("test fail");
			return;
		endif
	endfor

	if (ansL == 1)
		disp("test succeded");
    	plot(real(EIG), imag(EIG), 'xr')
    	title('Autovalores de la matriz A')
    	xlabel('Reales')
    	ylabel('Imaginarios')
    	hold
    	totaltime = etime(clock(),inittime);
    	totaltime = totaltime/60;
    	disp(totaltime);
	endif

endfunction
