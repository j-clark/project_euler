def palindrome?(str)
  strlen = str.length  
  i = 0
  j = strlen - 1

  while i <= j
    if str[i] != str[j]
      return false
    end
    i += 1
    j -= 1
  end
  true
end

biggest = -1
1000.times do |i|
  j = i
  while j < 1000
    if( palindrome?((j * i).to_s) and (j * i) > biggest )
      biggest = j * i
    end
    j += 1
  end
end

puts biggest