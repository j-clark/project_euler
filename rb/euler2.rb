def fib(n)
  if n == 1
    1
  elsif n == 2
    2
  else
    fib(n - 1) + fib(n - 2)    
  end
end

sum = 0
i = 1
term = 1
while term <= 4_000_000 
  if term % 2 == 0
    sum += term
  end
  i += 1
  term = fib(i)
end

puts sum