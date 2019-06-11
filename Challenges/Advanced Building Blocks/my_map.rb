def my_map()
  mapping = []
  if block_given?
    self.my_each do |e|
      mapping.push(yield(e))
    end
  else
    self.my_each do |e|
      mapping.push(proc.call(e))
    end
  end
  mapping
end
