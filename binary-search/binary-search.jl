function binarysearch(array, elem; lt=<, by= x -> x, rev=false)
	tarray = map(by, array)
	telem = by(elem)
	start = firstindex(array)
	final = lastindex(array)
	
	while final ≥ start
		middle = (start + final) ÷ 2
		if telem == tarray[middle]
			return middle:middle
		end
		if rev
			if lt(telem, tarray[middle])
				start = middle + 1
			else
				final = middle - 1
			end
		else
		    if lt(telem, tarray[middle])
		    	final = middle - 1
		    else
		    	start = middle + 1
		    end
		end
	end
	start:final
end

# function binarysearch(array, elem, start=1, final=nothing)
# 	println("rc-")
#     if final == nothing
#     	final = length(array)
#     end
#     if start > final
#     	return start:final
#     end
    
#     middle = (start + final)÷2

#     if elem == array[middle]
#     	middle:middle
#     elseif elem < array[middle]
#   		final = middle-1
#         binarysearch(array, elem, start, final)
#     else
#     	start = middle + 1
#     	binarysearch(array, elem, start, final)
#     end
# end