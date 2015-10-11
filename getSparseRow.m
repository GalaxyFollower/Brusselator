function [s2,s3] = getSparseRow(r1,c1,v1,i)
	j=1; k=1;
	n=r1(size(r1)(2));
	while(r1(k)<=n)
		aux=r1(k);
		if(aux==i)
			s2(j)=c1(k);
			s3(j)=v1(k);
			j++;
		endif
		k++;
	end
endfunction