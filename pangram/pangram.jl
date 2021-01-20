"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    size = Int('z') - Int('a') + 1
    lwinput = lowercase(input)
    alphabet = repeat([false], size)
    for c in lwinput
        p = Int(c)
        if p >= Int('a') && p <= Int('z')
            alphabet[p - Int('a') + 1] = true
        end
    end
    return all(x -> x && true, alphabet)
end

println(ispangram("abcde"))
