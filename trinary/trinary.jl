function trinary_to_decimal(str)
	if length(filter(c -> c in "012", str)) != length(str)
		return 0
	end 
	darray = digits(parse(Int, str))
	sum(map(i -> darray[i] * 3^(i-1), 1:length(darray)))
end
