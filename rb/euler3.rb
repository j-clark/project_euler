def prime?(num)
  i = 2
  sqrt_num = Math.sqrt(num) + 1
  while i < sqrt_num
    if num % i == 0
      return false
    end
    i += 1
  end
  true
end

composite = 600851475143
composite_sqrt = Math.sqrt(composite) + 1

largest_factor = 1
i = 1
while i < composite_sqrt
  if composite % i == 0 and prime?(i)
    largest_factor = i
  end
  i += 1
end

puts largest_factor