cipher_char(c) = if c in 'a':'z'
					Char('z' - Char(c - 'a'))
				elseif c in '0':'9'
					c
				else
					""
				end

function splitcode(msg)
	cipher = ""
	for (i, c) in enumerate(msg)
		cipher = cipher * c
		if i % 5 == 0
		    cipher = cipher * " "
		end
	end
	cipher
end

encode(input) = map(x -> cipher_char(x), lowercase(input))

function decode(input)

end

