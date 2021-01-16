function encode(s)
    if isempty(s)
        return ""
    end
    currentchar = s[1]
    count = 1
    code = ""
    for c in s[2:end]
        if c == currentchar
            count = count + 1
        else
            if count > 1
                code = code * "$count$currentchar"
            else
                code = code * currentchar
            end
            count = 1
            currentchar = c
        end
    end
    code = code * if count > 1 
                    "$count$currentchar"
                else
                    "$currentchar"
                end
end

function decode(s)
    if isempty(s)
        return ""
    end
    code = ""
    count = ""
    for c in s
        if isdigit(c)
            count = count * c
        else
            if isempty(count) # single char
                code = code * c
            else
                code = code * c^parse(Int32, count)
            end
            count = ""
        end
    end
    code
end
