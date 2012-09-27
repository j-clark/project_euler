def prime?(n)
  if n < 2
    return false;
  end

  2.upto(Math.sqrt(n)) do |i|
    if n % i == 0
      return false;
    end
  end
  puts n
  true
end

sum = 0

1.upto 2_000_000 do |i|
  sum += i if prime? i
end

puts sum