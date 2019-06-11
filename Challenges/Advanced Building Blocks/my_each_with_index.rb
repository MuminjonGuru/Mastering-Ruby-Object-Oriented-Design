def my_each_with_index
  i = 0
  for a in self
    yield(a, i)
    i = i + 1
  end
end
