function detect_anagrams(subject, candidates)
    anagrams = []
    lwsubject = lowercase(subject)
    for candidate in candidates
        lwcandidate = lowercase(candidate)
        if lwcandidate != lwsubject
            if sort(collect(lwcandidate)) == sort(collect(lwsubject))
                push!(anagrams, candidate)
            end
        end
    end
    anagrams
end

# println(detect_anagrams("aba", ["ABA", "BaA"]))