def summation_sequence(start, length)
  seq = [start]
  
  while seq.length < length
    prev = seq[-1]
    seq << summation(prev)
  end  
  return seq
end

def summation(n)
  sum = 0
  
  (1..n).each do |i|
    sum += i
  end  
  
  return sum
end  

print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]
