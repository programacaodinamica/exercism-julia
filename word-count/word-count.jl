function wordcount(sentence)
	phrase = map(c -> isletter(c) || isdigit(c) || c == '\'' ? c : ' ',
					lowercase(sentence)) 
	words = split(phrase, r"\s+")
	counts = Dict()
	for word in words
		w = strip(word, '\'')
		if !(w in["", "'"])
			n = get(counts, w, 0)
			counts[strip(w, '\'')] = n + 1    
		end
	end
	counts
end