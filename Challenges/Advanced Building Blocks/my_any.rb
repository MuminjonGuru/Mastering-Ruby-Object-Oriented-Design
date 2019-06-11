def my_any?
  a = false
  self.my_each do |e|
    if yield(e) == true
      a = true
    end
  end
  a
end
