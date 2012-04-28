def sum_of_squares(n)
  (n * (n + 1) * (2 * n + 1)) / 6
end

def square_of_sums(n)
  ( (n * (n + 1)) / 2 ) ** 2
end

puts square_of_sums(100) - sum_of_squares(100)