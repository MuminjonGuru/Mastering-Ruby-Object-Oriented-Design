def my_count
  c = 0
  self.my_each do |e|
    if block_given?
      c += 1 if yield(e) == true
    else
      c += 1
    end
  end
  c
end
