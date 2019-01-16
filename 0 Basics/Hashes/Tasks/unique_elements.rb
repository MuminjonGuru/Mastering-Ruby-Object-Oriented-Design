# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  hash = Hash.new(0)
  arr.each do |element|
    hash[element] = true
  end  
  return hash.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
