def add_nums(arr)
  return arr.first if arr.length <= 1

  arr.pop + add_nums(arr)
end

p(add_nums([1,2,3]))
