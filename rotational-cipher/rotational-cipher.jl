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

macro R13_str(msg)
    rotate(13, msg)
end

# after looking at: bwasty's solution
# check: https://exercism.io/tracks/julia/exercises/rotational-cipher/solutions/2c423955e21c45d28ad20d04af99cbbb
for i = 0:26
    @eval macro ($(Symbol("R", i, "_str")))(msg)
       rotate($i, msg) 
    end
    # @eval ($(Symbol("func", i) ) )(msg) = rotate($i, msg)
end
println(R0"Hello, World!" == "Hello, World!")
println(R4"Testing 1 2 3 testing" == "Xiwxmrk 1 2 3 xiwxmrk")
println(R13"abcdefghijklmnopqrstuvwxyz" == "nopqrstuvwxyzabcdefghijklm")

