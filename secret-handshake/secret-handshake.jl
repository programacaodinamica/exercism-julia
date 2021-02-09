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
	secret = []
	
end