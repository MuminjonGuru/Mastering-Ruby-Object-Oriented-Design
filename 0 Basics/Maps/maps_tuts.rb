# Array-Giving Enumerables
#  map
#  select

# arr = ["a", "b", "c", "d"]
# new_arr = arr.map { |ele| ele.upcase}
# print new_arr

#--------------Even Nums-------------#
nums = [1,2,3,4,5,6]

# BASIC SOLUTION
evens = []
nums.each do |num|
  if num % 2 == 0
    evens << num
  end
end
print evens    

puts  # new line

# LOOKS PROFESSIONAL
print nums.select{ |ele| ele % 2 == 0 }
