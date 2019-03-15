def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(arr)
  arr.reject {|dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
  arr.count { |subarr| subarr.sum > 2 }
end

def aba_translate(str)
  words = ""
  vowels = "aieou"
  str.each_char do |char|
    if vowels.include?(char)
      words += char + "b" + char
    else
      words += char
    end
  end

  words
end

def aba_array(words)
  words.map { |word| aba_translate(word) }
end
