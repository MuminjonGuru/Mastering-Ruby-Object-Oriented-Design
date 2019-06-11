def my_none?
  a = true
  self.my_each do |e|
    if yield(e) == true
      a = false
    end
  end
  a
end
