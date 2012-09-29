
def get_array(file)
  file = File.open(file)

  arr = Array.new

  file.each do |i|
    arr[arr.size] = i.split ' '
  end  
  arr
end


def integerize(arr)
  0.upto arr.length - 1 do |i| 
    0.upto arr[i].length - 1 do |j| 
      arr[i][j] = Integer(arr[i][j][ /([1-9]\d*|^0+$)/ ])
    end
  end
end

def horizontal(arr)
  theproduct = 0
  0.upto arr.length - 4 do |i|
    0.upto arr[i].length - 1 do |j|
      localproduct = arr[i][j] * arr[i + 1][j] * arr[i + 2][j] * arr[i + 3][j]
      theproduct = localproduct if localproduct >  theproduct
    end
  end
  theproduct
end

def vertical(arr)
  theproduct = 0
  0.upto arr.length - 1 do |i|
    0.upto arr[i].length - 4 do |j|
      localproduct = arr[i][j] * arr[i][j + 1] * arr[i][j + 2] * arr[i][j + 3]
      theproduct = localproduct if localproduct > theproduct
    end
  end
  theproduct
end

def diagonal_right(arr)
  theproduct = 0
  0.upto arr.length - 4 do |i|
    0.upto arr[i].length - 4 do |j|
      localproduct = arr[i][j] * arr[i + 1][j + 1] * arr[i + 2][j + 2] * arr[i + 3][j + 3]
      theproduct = localproduct if localproduct > theproduct
    end
  end
  theproduct  
end

def diagonal_left(arr)
  theproduct = 0
  3.upto arr.length - 1 do |i|
    0.upto arr[i].length - 4 do |j|
      localproduct = arr[i][j] * arr[i - 1][j + 1] * arr[i - 2][j + 2] * arr[i - 3][j + 3]
      theproduct = localproduct if localproduct > theproduct
    end
  end
  theproduct  
end

arr = get_array '../11.txt'
integerize arr

product = horizontal arr
vertical_product = vertical arr
product = vertical_product if vertical_product > product
diagonal_product = diagonal_right arr
product = diagonal_product if diagonal_product > product
diagonal_product = diagonal_left arr
product = diagonal_product if diagonal_product > product
puts product