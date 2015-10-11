function [s1,s3,k] = getSparseCol(r1,c1,v1,i,k)
	j=1;
	n=r1(size(r1)(2));
	while(c1(k)<=i)
		aux=c1(k);
		if(aux==i)
			s1(j)=r1(k);
			s3(j)=v1(k);
			j++;
		endif
		k++;
	end
endfunction