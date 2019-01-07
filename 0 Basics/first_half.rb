def first_half(array)
  arr_half = []
  i = 0
  while i < (array.length / 2.0)
    ele = array[i]
    arr_half << ele
    i += 1
  end
  return arr_half
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
