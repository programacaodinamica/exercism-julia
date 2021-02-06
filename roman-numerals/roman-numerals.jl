function substitute(part)
	if isempty(part)
	    return part
	end
	table = Dict('C' => ['D', 'M'], 'X' => ['L', 'C'],'I' => ['V', 'X'], 'M'=>[])
	n = length(part)
	c = part[1]
	if n == 9 
		c * table[c][2]
	elseif n == 4
		c * table[c][1]
	elseif n ≥ 5
		table[c][1] * repeat(c, n - 5)
	else
		part
	end
end

function to_roman(number)
	if number < 1
		return error("Only positive integers!")
	end
	symbols = ["I", "X", "C", "M"]
	dnumbers = digits(number)
	roman = ""
	algs = map(i -> repeat(symbols[i], dnumbers[i]), 1:length(dnumbers))

	mapfoldl(substitute, * , reverse(algs))
end