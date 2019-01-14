# sort_by

str = "mississippi river"
count = Hash.new(0)

str.each_char { |char| count[char] += 1 }

# puts count
#-------------------

print count.sort_by { |k, v| v }
puts
sorted = print count.sort_by { |k, v| v }
print sorted
