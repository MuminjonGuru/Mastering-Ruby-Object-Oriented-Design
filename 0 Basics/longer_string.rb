def longer_string(str1, str2)
	if (str1.length) > (str2.length)
      return str1
    elsif (str1.length) == (str2.length)
      return str1
    else
      return str2
    end  
      
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"
