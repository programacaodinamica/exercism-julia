function tobinary(code)
	bin = ""
	q = code
	while q > 1
		r = q % 2
	    q = q ÷ 2
	    bin = "$r" * bin
	end
	"$q" * bin
end

function secret_handshake(code)
	table = ["wink", "double blink", "close your eyes", "jump"]
	secret = []
	bin = reverse(tobinary(code))
	limit = length(bin) ≤ 5 ? length(bin) : 5
	for i in 1:limit
		if bin[i] == '1'
			i < 5 ? push!(secret, table[i]) : reverse!(secret)
		end
	end
	secret
end

