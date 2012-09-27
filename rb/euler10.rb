def prime?(n)
  if n < 2
    return false;
  end

  2.upto(Math.sqrt(n)) do |i|
    if n % i == 0
      return false;
    end
  end
  true
end

sum = 2

3.upto 2_000_000 do |i|
  next if i % 2 == 0
  sum += i if prime? i
end

puts sum