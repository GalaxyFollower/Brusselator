%function (m),m2,m3] = multiplySparseMatrices(r1,c1,v1,r2,c2,v2)
%
%	i=0; j=0;
%	while(i>0)
%		while(j>0)
%
%		end
%	end
%
%endfunction


function [row] = getRow(r1,c1,v1,i)
	aux = i; k=1;
	n=r1(size(r1)(2));
	row = zeros(1,n);
	for k=1:(size(r1)(2)-1)
		aux=r1(k);
		if(aux==i)
			row(c1(k))=v1(k);
		endif
	end
endfunction