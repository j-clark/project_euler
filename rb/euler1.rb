sum = 0
i = 0
1000.times do
  if ((i % 3 == 0) or (i % 5 == 0))  then
    sum += i 
  end
  i += 1
end
puts sum