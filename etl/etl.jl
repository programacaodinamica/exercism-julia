function transform(input::AbstractDict)
	output = Dict()
	for (k, v) in input
		for elem in v
			output[lowercase(elem)] = k
		end
	end
	output
end

