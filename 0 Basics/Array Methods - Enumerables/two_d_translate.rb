def two_d_translate(arr)
  array = []
  
  arr.each do | subArr |
    ele = subArr[0]
    num = subArr[1]
  	num.times { array << ele }
  end  
  return array
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
