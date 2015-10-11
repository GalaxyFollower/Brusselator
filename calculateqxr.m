% This method is to improve R*Q production, usgin the property of R that is
% an uppertriangular matriz
 
function P = calculateqxr(R, Q)
	i = length(R);
	P = zeros(i);
	for row=1:i
		for col=1:i
			for Qrow=row:i 
				P(row, col) = P(row, col) + R(row, Qrow) * Q(Qrow, col);
			end
		end
	end
end