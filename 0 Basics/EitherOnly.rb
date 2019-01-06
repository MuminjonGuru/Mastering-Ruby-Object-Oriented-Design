def either_only(number)
	if (number % 3 == 0) || (number % 5 == 0)
      return true
    else
      false
    end  
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false
