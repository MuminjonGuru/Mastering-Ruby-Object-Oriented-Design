def my_all
  a = true
  self.my_each do |e|
    if yield(e) == false
      a = false
    end
  end
  a
end
