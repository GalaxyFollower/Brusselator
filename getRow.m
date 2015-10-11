function [row] = getRow(r1,c1,v1,i)
	aux = i; k=1;
	n=r1(size(r1)(2));
	row = zeros(1,n);

	while(k<i+1)
		aux=r1(k);
		if(aux==i)
			row(c1(k))=v1(k);
		endif
		k++;
	end
endfunction