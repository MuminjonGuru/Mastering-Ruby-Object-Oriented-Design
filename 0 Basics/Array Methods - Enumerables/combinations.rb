def combinations(arr)
  pairs = []
  
  arr.each_with_index do |ele1, id1|
    arr.each_with_index do |ele2, id2|
      if id2 > id1
      	pairs << [ele1, ele2]
      end
    end
  end   
  return pairs
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
