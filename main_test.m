% Tests the matrices files we already have
% taken from http://math.nist.gov/MatrixMarket/data/NEP/mvmbwm/mvmbwm.html
% To test a different matrix file, see test_A_generation
function main_test()
	
	a=2; b=5.45; delt1=0.008; delt2=0.004; L=0.51302;

	filename= "./matrices/bwm200.mtx"; m=100;
	test_A_generation (filename,a,b,delt1,delt2,L,m);

	filename = "./matrices/bwm2000.mtx"; m=1000;
	test_A_generation (filename,a,b,delt1,delt2,L,m);

endfunction