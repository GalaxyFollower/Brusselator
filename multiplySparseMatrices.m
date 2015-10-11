function [m1,m2,m3] = multiplySparseMatrices(r1,c1,v1,r2,c2,v2)

	i=1; j=1; k=1;
	n1=r1(size(r1)(2));	
	n2=r2(size(r2)(2));

	if(n1!=n2)
		disp('Cannot multiply diffrent size matrices')
		return
	endif


	% testMultiplySparseTime (A con m=100)
	% tf =  0.014328
	% ans = 0
	% tf =  33.159

	while(i<n1+1) % fila
		g=1;
		for j=1:n1 % columna	
			row = getRow(r1,c1,v1,i);
			[col,g] = getCol(r2,c2,v2,j,g);

			r = row*col;
			%disp(r)
			if(r!=0)
				m1(k)=i;
				m2(k)=j;
				m3(k)=r;
				k++;				
			endif
		end
		i++;
	end
endfunction