def element_count(arr)
  count = Hash.new(0)
  arr.each {|ele| count[ele] += 1}
  return count
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green", "MuminjonGuru"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
