def consonant_cancel(sentence)
  words = sentence.split
  new_words = words.map { |word| remove_first_consonant(word) }
  return new_words.join(" ")
end

def remove_first_consonant(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1]
    end
  end  
end  

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
