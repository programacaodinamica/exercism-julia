function raindrops(number)
	drops = ""
	if (number % 3) == 0
		drops = drops * "Pling"
	end
	if (number % 5) == 0
	  	drops = drops * "Plang" 
	end
	if (number % 7) == 0
	   	drops = drops * "Plong" 
	end
	isempty(drops) ? string(number) : drops
end

# raindrops(number) = begin 
# 						drops = (number % 3) == 0 ? "Pling" : "" 
# 						* (number % 5) == 0 ? "Plang" : "" 
# 						* (number % 7) == 0 ? "Plong" : ""
# 						isempty(drops) ? string(number) : drops					
# 					end