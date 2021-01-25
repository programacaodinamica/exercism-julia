cipher_char(c) = c in 'a':'z' ? Char('z' - Char(c - 'a')) : c

function splitcode(msg)
	cipher = ""
	for (i, c) in enumerate(msg)
		cipher = cipher * c
		if i % 5 == 0
		    cipher = cipher * " "
		end
	end
	rstrip(cipher)
end

atbash(input) = map(x -> cipher_char(x), 
	filter(x -> isletter(x) || isdigit(x), lowercase(input)))

encode(input) = splitcode(atbash(input))

decode(input) = atbash(input)

