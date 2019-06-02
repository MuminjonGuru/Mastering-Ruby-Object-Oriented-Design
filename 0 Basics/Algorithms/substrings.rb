def substrings(sentence, dictionary)
  dictionary_hash = Hash.new(0)

  dictionary.each do |dictionary_word|
    sentence.split.each do |sentence_word|
      sentence_word.downcase!
      if sentence_word.include? dictionary_word
        dictionary_hash[dictionary_word] += 1
      end
    end
  end
  dictionary_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
