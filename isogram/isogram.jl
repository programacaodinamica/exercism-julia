
function isisogram(s)
	table = repeat([0], 26)
	lowers = lowercase(s)
	for c in lowers
		if c in 'a':'z'
			table[c - 'a' + 1] = table[c - 'a' + 1] + 1    
		end
	end
	all(x -> x ≤ 1, table)
end
