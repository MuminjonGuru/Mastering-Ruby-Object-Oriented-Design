def prime?(num)
  if num < 2
    return false
  end
  
  (2...num).each do |factor|
    if num % factor == 0
      return false
    end  
  end  
  return true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
