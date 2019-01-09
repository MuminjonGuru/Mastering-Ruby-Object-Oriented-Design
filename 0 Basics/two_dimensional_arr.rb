arr = [
  ["a", "b", "c"],
  ["d", "e"],
  ["f", "g", "h"],
]

# print arr[2][1]
# puts

arr.each do |subArr|
  print subArr
  puts
  subArr.each do |ele|
    puts ele
  end
end
