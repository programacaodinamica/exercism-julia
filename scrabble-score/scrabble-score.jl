# #Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10

maketable() = map(collect("ABCDEFGHIJKLMNOPQRSTUVWXYZ")) do c
				if c in "Q, Z"
					10
				elseif c in "D, G"
					2
				elseif c in "B, C, M, P"
					3
				elseif c in "F, H, V, W, Y"
					4
				elseif c == 'K'
					5
				elseif c in "J, X"
					8
				else 
					1
				end
			end


indexof(c) = Int(c - 'A' + 1) 
score(str) = isempty(str) ? 0 : begin
				table = maketable()
				mapfoldl( c -> indexof(c) in 1:26 ? table[indexof(c)] : 0 , 
								+ , collect(uppercase(str)))
				end

# function score(str)
# 	points = 0
# 	if isempty(str)
# 		return points
# 	end
# 	table = maketable()
# 	for c in uppercase(str)
# 		i = Int(c - 'A' + 1)
# 		if i in 1:26
# 			points = points + table[i]
# 		end
# 	end
# 	points
# end
