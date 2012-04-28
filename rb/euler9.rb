def pythag_triplet?(a, b, c)
  a**2 + b**2 == c**2  
end

1.upto 1000 do |i|
  i.upto 1000 do |j|
    j.upto 1000 do |k|
      if(i + j + k == 1000 && pythag_triplet?(i,j,k))
        puts i * j * k
        exit
      end
    end
  end
end