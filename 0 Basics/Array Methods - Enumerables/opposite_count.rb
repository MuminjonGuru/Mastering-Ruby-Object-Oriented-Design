def opposite_count(nums)
  count = 0
  
  nums.each_with_index do |num1, id1|
    nums.each_with_index do |num2, id2|
      if num1 + num2 == 0 && id2 > id1
        count += 1
      end  
    end
  end  
  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
