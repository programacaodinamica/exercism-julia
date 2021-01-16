"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    a_count = 0
    c_count = 0
    g_count = 0
    t_count = 0
    for n in strand
        if n == 'A'
            a_count = a_count + 1
        elseif n == 'C'
            c_count = c_count + 1
        elseif n == 'G'
            g_count = g_count + 1
        elseif n == 'T'
            t_count = t_count + 1
        else
            throw(DomainError("error"))
        end
    end

    Dict('A' => a_count, 'C' => c_count, 'G' => g_count, 'T' => t_count)

end

# println(count_nucleotides('J'))