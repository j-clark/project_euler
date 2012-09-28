file = File.open('../11.txt')

arr = Array.new

file.each do |i|
  arr[arr.size] = i.split ' '
end


arr.each do |i| 
  i.each do |j| 
    begin
      j = Integer(j[/([1-9]\d*|^0+$)/])
    rescue
      puts 'caught ' + j
    end
  end
end


col = arr.size
row = arr[0].size


sum = 0

#horizontal test
0.upto row do |i|
  0.upto col - 4 do |j|
    localsum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i][j+3]
    begin
      sum = localsum if localsum > sum
    rescue
      puts sum
      puts localsum
      return
    end
  end
end

puts 'sum ' + sum

