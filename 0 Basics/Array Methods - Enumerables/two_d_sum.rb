def two_d_sum(arr)
  sum = 0
  arr.each do |sub_arr|
    sub_arr.each do |num|
      sum += num
    end
  end  
  return sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
