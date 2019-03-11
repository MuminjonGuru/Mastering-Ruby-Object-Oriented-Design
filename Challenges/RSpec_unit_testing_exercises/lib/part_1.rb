def average(num1, num2)
  (num1 + num2) / 2.0
end

def average_array(array)
  # didn't remember the built-in methods ))
  sum = 0
  array.each_index {|idx| sum += array[idx]}
  sum / 2.0

  # nums.sum / (nums.length * 1.0)  ---
end

def repeat(str, n)
  str * n
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  words = str.split(" ")
  alternated_words = words.map.with_index do |word, i|
    if i.even?
      word.upcase
    else
      word.downcase
    end
  end

  alternated_words.join(" ")
end
