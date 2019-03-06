def greatest_factor_array(arr)
  new_arr = arr.map do |num|
    if num % 2 == 0
      greatest_factor(num)
    else
      num
    end
  end
  return new_arr  
end

def greatest_factor(num)
  (1...num).reverse_each do |i|
    if num % i == 0
      return i
    end
  end  
end  

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
