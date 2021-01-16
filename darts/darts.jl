function score(x, y) 
    d = sqrt(x^2 + y^2)
    if d > 10
        0
    elseif d > 5
        1
    elseif d > 1
        5
    else
        10
    end
end    
