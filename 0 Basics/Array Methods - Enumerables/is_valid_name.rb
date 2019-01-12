# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  parts = str.split(" ")
  if parts.length < 2
    return false
  end  
  
  parts.each do |part| 
  	if !if_capitilized(part)
      return false
    end  
  end    
  return true
end

def if_capitilized(word)
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    return true
  else
    return false
  end  
end  

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
