arr = ["apple", "bootCAMP", "caRrot", "DaNcE"]

new_arr = arr.map.with_index do |ele, i|
  first_char = ele[0].upcase
  rest = ele[1..-1].downcase
  new_word = first_char + rest
  new_word * i
end

print new_arr

#output
# ["", "Bootcamp", "CarrotCarrot", "DanceDanceDance"]
