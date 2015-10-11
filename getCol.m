function [col,k] = getCol(r1,c1,v1,i,k)
	aux = i;
	n=r1(size(r1)(2)); %size A
	col = zeros(1,n);

	while(k<n+1 && c1(k)<=i)
		aux=c1(k);
		if(aux==i)
			col(r1(k))=v1(k);
		endif
		k++;
	end
	col=col';
endfunction