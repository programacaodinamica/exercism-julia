function luhn(code)
	nospace = filter(c -> !isspace(c), code)
	if length(nospace) ≤ 1
	   return false
	end
	fcode = map(c -> isdigit(c) ? c : 'x', nospace)
	if 'x' in fcode
		return false
	end
	
	# se length(nospace) é par, quero os ímpares
	rest = length(nospace) % 2 == 0 ? 1 : 0
	doubled = ""
	for i in 1:length(nospace)
		doubled = doubled * if i % 2 == rest
					n = parse(Int, nospace[i])*2
					if n > 9
						n = n - 9
					end
					Char('0' + n)
				else
					nospace[i]
				end
	end
	mapreduce(c -> parse(Int,c), + , doubled) % 10 == 0 ? true : false
end