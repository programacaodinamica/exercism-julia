function rotate(key, message)
	cipher = ""
    for c in message
    	if isletter(c)
    		offset = isuppercase(c) ? Int('A') : Int('a')
    		cipher = cipher * Char((Int(c) - offset + key) % 26 + offset)
    	else
    		cipher = cipher * c
    	end
    end
    if typeof(message) == Char
        cipher[1]
    else
      	cipher
    end
end