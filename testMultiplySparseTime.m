function testMultiplySparseTime()
	a=2; b=5.45; delt1=0.008; delt2=0.004; L=0.51302; m=10;
	A=generate_A_matrix(m,a,b,delt1,delt2,L);
	[a1,a2,a3] = full2sparse(A);
	

	t0=clock();
	A*A;
	tf=etime(clock(),t0)
	fflush(stdout)

	t0=clock();
	multiplySparseMatrices(a1,a2,a3,a1,a2,a3);
	tf=etime(clock(),t0)
endfunction