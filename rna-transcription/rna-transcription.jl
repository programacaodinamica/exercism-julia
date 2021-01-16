function to_rna(dna)
    rna = ""
    for n in dna
        rna = rna * if n == 'C'
            'G'
        elseif n == 'G'
            'C'
        elseif n == 'T'
            'A'
        elseif n == 'A'
            'U'
        else
            throw(ErrorException("Invalid input!"))
        end
    end
    rna
end
