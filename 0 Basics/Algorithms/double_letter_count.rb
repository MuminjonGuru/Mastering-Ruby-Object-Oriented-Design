def double_letter_count(string)
  count = 0
  string.each_char.with_index do |char, i|
    if string[i] == string[i+1]
      count += 1
    end  
  end
  return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
