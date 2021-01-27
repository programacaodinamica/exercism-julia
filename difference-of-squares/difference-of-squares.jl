"Square the sum of the first `n` positive integers"
square_of_sum(n) = n > 1 ? ((1 + n)*n÷2)^2 : n

"Sum the squares of the first `n` positive integers"
sum_of_squares(n) = n > 1 ? mapreduce(x -> x^2, +, 1:n) : n

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
difference(n) = square_of_sum(n) - sum_of_squares(n)

# println(square_of_sum(10))
# println(sum_of_squares(10))
# println(difference(10))