def frequent_letters(string)
  count = Hash.new(0)
  string.each_char { |char| count[char] += 1 }
  
  frequents = []
  count.each do |char, num|
    if num > 2
      frequents << char
    end  
  end
  return frequents
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
