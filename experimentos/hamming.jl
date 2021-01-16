function distance(Q::AbstractString, R::AbstractString)

    if length(Q)!=length(R)
        throw(ArgumentError("strings must be of equal length"))
    end
    
    map(!=,Q,R) |> sum
end

println(distance("AGCTA", "AGTTG"))
