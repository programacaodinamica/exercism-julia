function triangle(n)
	if n < 0
		throw(DomainError("n must be non negative"))
	elseif n == 0
		[]
	elseif n == 1
		[[1]]
	elseif n == 2
		[[1], [1, 1]]
	else
		pascal = [[1], [1, 1]]
		for i = 3:n
			lastrow = pascal[i-1]
			row = [1; [lastrow[k] + lastrow[k+1] 
					for k = 1:(lastindex(lastrow) -1)]; 1]
			push!(pascal, row)
		end
		pascal
	end
end
