def whisper_words(words)
  words.map { |word| word.downcase + "..." }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts
