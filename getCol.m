function [col] = getCol(r1,c1,v1,i)
	aux = i; k=1;
	n=r1(size(r1)(2)); %size A
	col = zeros(1,n);
	for k=1:(size(c1)(2))
		aux=c1(k);
		if(aux==i)
			col(r1(k))=v1(k);
		endif
	end
	col=col';
endfunction