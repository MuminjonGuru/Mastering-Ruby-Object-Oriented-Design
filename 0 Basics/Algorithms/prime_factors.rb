def prime_factors(num)
  prime_facts = []
  
  (1..num).each do |i|
    if num % i == 0 && prime?(i)
      prime_facts << i
    end
  end
  
  return prime_facts
end

def prime?(num)
  if num < 2 
    return false
  end
  
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end
  return true
end  

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
