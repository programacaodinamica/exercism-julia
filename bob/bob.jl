function bob(stimulus)
    response = Dict(
        :question => "Sure.",
        :yelling => "Whoa, chill out!",
        :silence => "Fine. Be that way!",
        :misc => "Whatever.",
        :forceful_question => "Calm down, I know what I'm doing!",
    )
    phrase = strip(stimulus)
    response[
        if issilence(phrase)
            :silence
        elseif isquestion(phrase) && isalluppercase(phrase)
            :forceful_question
        elseif isquestion(phrase)
            :question
        elseif isalluppercase(phrase)
            :yelling
        else
            :misc
        end ]
    
end

isquestion(phrase) = endswith(phrase, "?")

function isalluppercase(phrase)
    if all(c -> !isletter(c), phrase)
        return false
    end
    all(c-> !isletter(c) || isuppercase(c), phrase)
end

function issilence(phrase)
    blankchars = "\n\r \t"
    if phrase == "" || all(c-> c in blankchars, phrase)
        return true
    end
    false
end