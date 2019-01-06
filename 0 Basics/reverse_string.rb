def reverse(word)
  reversed_word = ""
  i = 0
  while i < word.length
    char = word[i]
    reversed_word = char + reversed_word
    i += 1
  end
  return reversed_word
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
