function is_valid(sides)
	all(map(i -> sides[i+1] < sides[(i+1)%3 + 1] + sides[(i+2)%3 + 1], 0:2))
end

is_equilateral(sides) = all(x -> x == sides[1] && x > 0, sides)

is_isosceles(sides) = is_valid(sides) ? length(Set(sides)) ≤ 2 : false

is_scalene(sides) = is_valid(sides) ? length(Set(sides)) == 3 : false
