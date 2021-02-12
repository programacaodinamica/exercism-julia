
function clean(phone_number)
    cleaned = filter(isdigit, phone_number)
    # tira 1 no começo se ele existir
    cleaned = cleaned[1] == '1' ? cleaned[2:end] : cleaned
    m = match(r"^[2-9][0-9]{2}[2-9][0-9]{6}$", cleaned)
    isnothing(m) ? nothing : m.match
end
