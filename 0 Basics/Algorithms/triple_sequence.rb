def triple_sequence(start, length)
  seq = [start]
  
  while seq.length < length
    seq << seq[-1] * 3
  end  
  return seq 
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts
