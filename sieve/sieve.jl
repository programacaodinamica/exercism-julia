multiples(p, limit) = Set(p:p:limit)

function sieve(limit)
	primes = []
	if limit == 1
	    return primes
	end

	n = 2
	p = 2
	not_primes = Set()
	while n ≤ limit
		push!(primes, p)
		union!(not_primes, multiples(p, limit))
		while n in not_primes
		    n = n + 1
		end
		p = n
	end
	primes
end
