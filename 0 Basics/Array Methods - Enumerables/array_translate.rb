def array_translate(array)
  str = ""

  i = 0
  while i < array.length
  	ele = array[i]
    num = array[i + 1]
    num.times { str += ele }
    i += 2
  end  
  
  return str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
