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

i = 2
num_primes = 0
the_prime = 0

while num_primes < 10_001
  if prime?(i)
    the_prime = i
    num_primes += 1
  end
    i += 1
end

puts the_prime