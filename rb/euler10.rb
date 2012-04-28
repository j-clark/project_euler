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

sum = 0