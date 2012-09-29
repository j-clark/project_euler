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

def foursies(arr, desc)
  prod = 0
  desc[:i_start].upto arr.length - desc[:i_end] do |i|
    desc[:j_start].upto arr[i].length - desc[:j_end] do |j|
      local_prod = arr[i][j] * arr[ i + 1 * desc[:i_mult] ][ j + 1 * desc[:j_mult] ] \
                             * arr[ i + 2 * desc[:i_mult] ][ j + 2 * desc[:j_mult] ] \
                             * arr[ i + 3 * desc[:i_mult] ][ j + 3 * desc[:j_mult] ]

      prod = local_prod if local_prod >  prod
    end
  end
  prod
end

arr = get_array '../11.txt'
integerize arr

desc = {
  i_start:  0,
  i_end:    4,
  j_start:  0,
  j_end:    1,
  i_mult:   1,
  j_mult:   0
}
product = [0, foursies(arr, desc)].max

desc = {
  i_start:  0,
  i_end:    1,
  j_start:  0,
  j_end:    4,
  i_mult:   0,
  j_mult:   1
}
product = [product, foursies(arr, desc)].max

desc = {
  i_start:  0,
  i_end:    4,
  j_start:  0,
  j_end:    4,
  i_mult:   1,
  j_mult:   1
}
product = [product, foursies(arr, desc)].max

desc = {
  i_start:  3,
  i_end:    1,
  j_start:  0,
  j_end:    4,
  i_mult:  -1,
  j_mult:   1
}
product = [product, foursies(arr, desc)].max

puts product