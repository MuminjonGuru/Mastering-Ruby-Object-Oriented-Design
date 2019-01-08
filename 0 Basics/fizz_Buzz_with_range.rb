def fizzBuzz(max)
  arr = []

  (1...max).each do |num|
    if num % 3 == 0 && num % 5 != 0
      arr << num
    end
    if num % 3 != 0 && num % 5 == 0
      arr << num
    end
  end
  return arr
end

fizzBuzz(20) # => [3, 5, 6, 9, 10, 12, 18]
