def pick_primes(numbers)
  return numbers.select { |num| prime?(num) }
end

def prime?(num)
  if num < 2 
    return false
  end
  
  (2...num).each do |factor|
    if num % factor == 0
      return false
    end  
  end  
  
  return true
end  

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
