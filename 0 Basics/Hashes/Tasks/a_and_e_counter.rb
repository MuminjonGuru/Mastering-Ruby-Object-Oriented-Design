def ae_count(str)
  count = {"a"=>0, "e"=>1}
  str.each_char do |char|
    if char = count[0]
      count[char] += 1
    end  
  end  
  return count
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
