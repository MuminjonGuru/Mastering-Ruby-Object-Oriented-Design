arr = ["a", "b", "c", "d"]

arr.each do |ele1|
  arr.each do |ele2|
    puts ele1 + ele2
  end
end

# only unique pairs

arr = ["a", "b", "c", "d"] 

arr.each_with_index do |ele1, idx1|
  arr.each_with_index do |ele2, idx2|
    if idx2 > idx1
      puts ele1 + ele2
      puts idx1.to_s + " " + idx2.to_s
      puts "-----"
    end
  end
end

# if idx2 is greater than idx1, then idx2 is never referring to what idx1 referred to previously
