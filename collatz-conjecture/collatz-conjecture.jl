function collatz_steps(n)
    if n ≤ 0
    	return throw(DomainError(n, "must be positive!"))
    end

    steps = 0
    while n != 1
    	n = n % 2 == 0 ? n ÷ 2 : 3 * n + 1
	    steps = steps + 1
	end
	steps
end