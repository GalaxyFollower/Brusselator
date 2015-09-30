function [A] = test_A_generation ()
	addpath("./lib");

	[A, rows, cols, entries] = mmread("./matrices/bwm200.mtx"); 
	[B, rowsb, colsb, entriesb] = mmread("./matrices/bwm2000.mtx");

endfunction