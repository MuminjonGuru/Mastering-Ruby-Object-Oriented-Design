def odd_range(min, max)
  odd_numbers = []
  while min <= max
    if min % 2 == 1
      odd_numbers << min
    end
    min += 1
  end
  return odd_numbers
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
