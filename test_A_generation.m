% Given a file in matrix market format (sparce) and some parameters
% test that the matrix in the file is equals to the one that
% generate_A_matrix() returns. The function displays the result.
% Return: 
% - myA : A matrix calculated with generate_A_matrix
% - mm_A: Matrix from filename
% see: generate_A_matrix (m, a, b, delt1, delt2, L)
function [my_A, mm_A] =test_A_generation (filename,a,b,delt1,delt2,L,m)

	[result, my_A, mm_A] = test_A (filename,a,b,delt1,delt2,L,m);
	displayState(result, filename);

endfunction

function [A_test, my_A, mm_A] = test_A (filename,a,b,delt1,delt2,L,m)
	addpath("./lib");

	my_A=generate_A_matrix(m,a,b,delt1,delt2,L);
	[mm_A_sparce, rows, cols, entries] = mmread(filename); 
	mm_A = full(mm_A_sparce);
	A_test =  matrix_is_equals(mm_A, my_A,m);

endfunction

function displayState(result,filename)
	if(result!= 1)
		disp("test fail"); disp(filename);
	else
		disp("test successful"); disp(filename);
	endif
endfunction