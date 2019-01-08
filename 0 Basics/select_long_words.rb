def select_long_words(words)
  long_words = []
  word = ''
  i = 0
  while i < words.length
  	word = words[i]
    if word.length > 4
      long_words << word
    end  
    i += 1
  end  
  return long_words
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]
