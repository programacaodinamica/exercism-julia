"Your optional docstring here"
function distance(a, b)
    if length(a) == length(b)
        hamming = 0
        for i = firstindex(a):lastindex(b)
            if a[i] != b[i]
                hamming = hamming + 1
            end
        end
    else
        throw(ArgumentError("they have different sizes!"))
    end
    hamming
end