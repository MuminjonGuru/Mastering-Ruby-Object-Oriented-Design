def number_check(num)
	if num > 0
      return "positive"
    elsif num < 0
      return "negative"
    else
      return "zero"
    end  
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"
