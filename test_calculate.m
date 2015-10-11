% This test was think to improve the efficiency of the R*Q production
% with our own method.
% m is the half of the dimension of A 

function T = test_calculate(m)
	a=2; b=5.45; delt1=0.008; delt2=0.004; L=0.51302;
	A = generate_A_matrix(m, a, b, delt1, delt2, L);
	[Q, R] = qr(A);
	inittimeCustom = clock();
	B = calculateqxr(R,Q);
	totaltimeCustom = etime(clock(),inittimeCustom);
    totaltimeCustom = totaltimeCustom/60;
    disp('custom ='); disp(totaltimeCustom);

	inittime = clock();
    B2 = R*Q;
	totaltime = etime(clock(),inittime);
    totaltime = totaltime/60;
    disp('octave ='); disp(totaltime);

	if(matrix_is_equals(B, B2, m) != 1)
		disp("test fail");
	else
		disp("test successful");
	end
end